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
      res.render('show', { title: 'All Books', oneBook: result.rows[0], added: !!req.query.added })
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
  client.query(SQL, values, (err, result) => {
    if (err) {
      res.render('error', {err: err});
    } else {
      res.redirect(`/books/${result.rows[0].book_id}?added=true`);
    }
  })
}

const searchBook = (req, res) => {
  console.log(req.query.query);
  superagent.get(`https://www.googleapis.com/books/v1/volumes?q=${req.query.query}`)
    .end( (err, apiResponse) => {
      console.log(apiResponse.body.items);
      res.redirect('/');
    })
}
module.exports = {
  getOneBook: getOneBook,
  getAllBooks: getAllBooks,
  newBook: newBook,
  searchBook: searchBook
}
