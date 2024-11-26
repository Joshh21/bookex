from flask import Flask, request, jsonify
from sklearn.feature_extraction.text import TfidfVectorizer
import mysql.connector
import numpy as np
from datetime import datetime, timedelta

app = Flask(__name__)

# Database connection
def get_db_connection():
    return mysql.connector.connect(
        host="localhost",
        user="root",
        password="",
        database="bookex4"
    )

def preprocess_genres(genres):
    """Split genres by comma, strip whitespace, and convert to lowercase."""
    return [genre.strip().lower() for genre in genres.split(",")]

@app.route('/get_recommendations', methods=['GET'])
def get_recommendations():
    user_id = request.args.get('user_id')
    if not user_id:
        return jsonify({"error": "User ID is required"}), 400

    conn = get_db_connection()
    cursor = conn.cursor(dictionary=True)

    # Calculate the cutoff date (7 days ago)
    cutoff_date = datetime.now() - timedelta(days=7)

    # Fetch genres of books viewed by the user in the last 7 days
    cursor.execute("""
        SELECT b.book_type
        FROM user_clicks uc
        JOIN books b ON uc.book_id = b.id
        WHERE uc.user_id = %s AND uc.click_timestamp >= %s
    """, (user_id, cutoff_date))
    user_genres_raw = [row['book_type'] for row in cursor.fetchall()]

    if not user_genres_raw:
        return jsonify([])  # No recent activity to recommend from

    # Preprocess user genres
    user_genres = [genre for genres in user_genres_raw for genre in preprocess_genres(genres)]

    # Fetch all books and their genres
    cursor.execute("SELECT id, book_type FROM books")
    books = cursor.fetchall()

    # Preprocess book genres
    book_genres = [{"id": book["id"], "genres": preprocess_genres(book["book_type"])} for book in books]

    # Prepare TF-IDF
    all_genres = user_genres + [" ".join(book["genres"]) for book in book_genres]
    tfidf = TfidfVectorizer()
    tfidf_matrix = tfidf.fit_transform(all_genres)

    # Compute similarity scores
    user_profile = tfidf_matrix[:len(user_genres)].mean(axis=0)
    scores = tfidf_matrix[len(user_genres):] @ user_profile.T
    scores = np.squeeze(np.asarray(scores))

    # Recommend top N books
    book_scores = sorted(zip(book_genres, scores), key=lambda x: -x[1])[:10]
    recommendations = [{"book_id": book["id"], "score": score} for book, score in book_scores]

    conn.close()
    return jsonify(recommendations)

if __name__ == '__main__':
    app.run(port=5000, debug=True)
