# Flask Todo App
## Overview
This project is a simple Todo application developed as part of my learning journey with Flask. The application covers the basics of Flask, including route configuration, handling request methods, and setting up a database for data storage. The app allows users to add, delete, and update tasks.

## Features
- **Route Configuration:** Learned to configure routes for different endpoints.
- **Request Methods:** Implemented handling for GET, POST, and DELETE requests.
- **Database Setup:** Configured a database to store todo tasks.
- **Task Management:** Users can add, delete, and update tasks.
## Getting Started
### Prerequisites
- Python 3.x
- Flask
- SQLite (or any other preferred database)
### Installation
- Clone the repository:

```bash
git clone https://github.com/yourusername/flask-todo-app.git
cd flask-todo-app
```
- Create a virtual environment:
```bash
python3 -m venv venv
source venv/bin/activate  # On Windows use `venv\Scripts\activate`
```
- Install dependencies:
```bash
pip install Flask
```
- Set up the database:
```bash
flask db init
flask db migrate -m "Initial migration."
flask db upgrade
```
- Run the Flask app:
```bash
flask run
```
- Open your browser and navigate to:
```bash
http://127.0.0.1:5000/
```
## Usage
- **Add a Task:** Use the form on the main page to add a new task.
- **Delete a Task:** Click the delete button next to the task you want to remove.
- **Update a Task:** Click the update button next to the task you want to edit, modify the task, and save changes.

## Key Learning Points
- **Routing:** Configured routes to handle different URLs and HTTP methods.
- **Request Methods:** Managed GET, POST, and DELETE requests to interact with the application.
- **Database Integration:** Set up a SQLite database to store and manage todo tasks.
- **Template Rendering:** Used Jinja2 templates to render HTML pages dynamically.
## Contributing
Contributions are welcome! If you have any suggestions or improvements, feel free to open an issue or submit a pull request.

## Contact
For any questions or suggestions, feel free to contact me at muhammadmuneeburrehman.vercel.app.
