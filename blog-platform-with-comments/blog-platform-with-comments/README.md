# Inkly — Blog Platform with Comments

A polished, frontend-first blogging platform created for a college project submission. The website demonstrates authentication, publishing, editing, deletion, searching, filtering, and comments using **HTML, CSS, Vanilla JavaScript, and localStorage**.

## Features

- Register and login
- Demo account included
- Session persistence with localStorage
- Create, edit, view, and delete blog posts
- Search and category filtering
- Add and delete your own comments
- Five preloaded sample stories
- Responsive modern UI
- Dashboard with story, comment, and word-count metrics
- Independent frontend that does not require a backend or database

## Technologies Used

### Frontend
- HTML5
- CSS3
- Vanilla JavaScript
- Browser localStorage

### Backend source
- Node.js
- Express
- MySQL2
- RESTful API structure

### Database source
- MySQL
- SQL schema with users, posts, and comments

## Folder Structure

```text
blog-platform-with-comments/
├── index.html
├── login.html
├── register.html
├── dashboard.html
├── create-post.html
├── post.html
├── css/
│   └── style.css
├── js/
│   ├── app.js
│   ├── auth.js
│   ├── posts.js
│   └── comments.js
├── backend/
│   ├── server.js
│   ├── package.json
│   ├── routes/
│   ├── controllers/
│   ├── models/
│   ├── middleware/
│   └── config/
├── database/
│   └── schema.sql
├── README.md
└── .gitignore
```

## Frontend Usage

No installation or configuration is required to demonstrate the frontend.

Simply open `index.html` in a modern browser.

The application automatically seeds sample users, posts, and comments into localStorage the first time it runs. All normal demo actions continue to work after refresh because the browser stores the data locally.

### Demo login

- Email: `demo@inkly.com`
- Password: `demo123`

You can also create a new account from the Register page.

> Important: localStorage authentication is intentionally a frontend demonstration mechanism. It is not suitable for production security.

## Backend Information

The `backend/` directory contains the REST API source for a full-stack extension. It is deliberately independent from the frontend so the website can be demonstrated without a running API.

The API includes:

- `POST /api/auth/register`
- `POST /api/auth/login`
- `GET /api/posts`
- `GET /api/posts/:id`
- `POST /api/posts`
- `PUT /api/posts/:id`
- `DELETE /api/posts/:id`
- `GET /api/posts/:id/comments`
- `POST /api/posts/:id/comments`
- `DELETE /api/comments/:id`

The backend expects a MySQL database and environment variables when someone chooses to run it. Those are not required for the frontend demonstration.

## Database Information

`database/schema.sql` creates:

- `users`
- `posts`
- `comments`

The schema includes primary keys, foreign-key relationships, cascading deletes, and sample records.

## Future Improvements

- Connect the frontend to the REST API
- Use password hashing and secure authentication
- Add JWT or server-side sessions
- Add image uploads
- Add rich-text/Markdown editing
- Add likes, bookmarks, tags, and user profiles
- Add pagination
- Add production database hosting
- Add automated testing and deployment

## Submission Note

The frontend is intentionally designed to run independently. The project can be extracted and uploaded to GitHub as-is for demonstration and submission without installing Node.js, npm, MySQL, or configuring environment variables.
