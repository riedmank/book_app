'use strict';

const pg = require('pg');
require('dotenv').config();
const conString = process.env.DATABASE_URL;
const client = new pg.Client(conString);
client.connect();
client.on('error', error => console.error(error));
const superagent = require('superagent');

const getOneBook = (req, res) => {
  let SQL = 'SELECT * FROM books WHERE book_id = $1';
  let values = [req.params.id];
  client.query(SQL, values, (err, result) => {
    if (err) {
      res.render('error', {err: err})
    } else if(!result.rows.length) {
      res.render('error', {err: '404 cannot find file'});
    } else {
      res.render('pages/books/show', { title: 'All Books', oneBook: result.rows[0], added: !!req.query.added })
    }
  });
}

const getAllBooks = (req, res) => {
  let SQL = 'SELECT book_id, title, author, image_url FROM books';
  client.query(SQL, (err, result) => {
    if (err) {
      res.render('error', {err: err});
    } else {
      res.render('index', { books: result.rows })
    }
  });
}

const newBook = (req, res) => {
  let SQL = 'INSERT INTO books (author, title, isbn, image_url, description) VALUES($1, $2, $3, $4, $5) RETURNING book_id;';
  let values = [req.body.author, req.body.title, req.body.isbn, req.body.image_url, req.body.description];
  console.log(values);
  client.query(SQL, values, (err, result) => {
    if (err) {
      res.render('error', {err: err});
    } else {
      res.redirect(`/books/${result.rows[0].book_id}?added=true`);
    }
  })
}

const searchBook = (req, res) => {
  superagent.get(`https://www.googleapis.com/books/v1/volumes?q=${req.query.q}`)
    .end( (err, apiResponse) => {
      let books = apiResponse.body.items.map(book => ({
        author: (book.volumeInfo.authors && book.volumeInfo.authors[0]) || 'unknown',
        title: book.volumeInfo.title,
        image_url: (book.volumeInfo.imageLinks && book.volumeInfo.imageLinks.smallThumbnail) || 'http://www.piniswiss.com/wp-content/uploads/2013/05/image-not-found-4a963b95bf081c3ea02923dceaeb3f8085e1a654fc54840aac61a57a60903fef-300x199.png',
        description: book.volumeInfo.description,
        isbn:  book.volumeInfo.industryIdentifiers ? book.volumeInfo.industryIdentifiers[0].type + book.volumeInfo.industryIdentifiers[0].identifier : 'unknown'}));
      console.log(books);
      res.render('pages/search/show', {books: books});
    })
}

module.exports = {
  getOneBook: getOneBook,
  getAllBooks: getAllBooks,
  newBook: newBook,
  searchBook: searchBook
}
