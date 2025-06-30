# server.py
from flask import Flask, render_template, request, url_for, redirect
import os
app = Flask(__name__,template_folder='../templates/')

# --- Routes for different pages ---

@app.route('/')
def home():
    """
    Renders the home page.
    This page includes navigation links to other parts of the site.
    """
    return render_template('home.html', title='Home')

@app.route('/about')
def about():
    """
    Renders the about page.
    Contains static text content.
    """
    return render_template('about.html', title='About Us')

@app.route('/contact', methods=['GET', 'POST'])
def contact():
    """
    Renders the contact page with a form.
    Handles both GET (display form) and POST (submit form) requests.
    Includes a message upon successful submission.
    """
    message = None
    if request.method == 'POST':
        name = request.form.get('name')
        email = request.form.get('email')
        message_text = request.form.get('message')

        if name and email and message_text:
            # In a real app, you'd process this data (e.g., save to DB, send email)
            print(f"Received Contact Form Submission:")
            print(f"  Name: {name}")
            print(f"  Email: {email}")
            print(f"  Message: {message_text}")
            message = "Thank you for your message! We'll get back to you soon."
        else:
            message = "Please fill in all fields."
    return render_template('contact.html', title='Contact Us', message=message)

@app.route('/data')
def data():
    """
    Renders a page with some static tabular data.
    Useful for testing table interactions and data extraction.
    """
    # Sample data for the table
    users = [
        {'id': 1, 'name': 'Alice Smith', 'email': 'alice@example.com', 'age': 30},
        {'id': 2, 'name': 'Bob Johnson', 'email': 'bob@example.com', 'age': 24},
        {'id': 3, 'name': 'Charlie Brown', 'email': 'charlie@example.com', 'age': 35},
        {'id': 4, 'name': 'Diana Prince', 'email': 'diana@example.com', 'age': 28},
    ]
    return render_template('data.html', title='Sample Data', users=users)

@app.errorhandler(404)
def page_not_found(e):
    """
    Custom error handler for 404 Not Found errors.
    """
    return render_template('404.html', title='Page Not Found'), 404

# --- Run the Flask application ---
if __name__ == '__main__':
    # Use debug=True for development, disable in production.
    # It allows auto-reloading and better error messages.
    app.run(debug=True, port=5000)
