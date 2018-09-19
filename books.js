'use strict';

const pg = require('pg');
require('dotenv').config();
const conString = process.env.DATABASE_URL;
const client = new pg.Client(conString);
client.connect();
client.on('error', error => console.error(error));

function getOneBook(req, res) {
  let SQL = 'SELECT * FROM books WHERE book_id = $1';
  let values = [req.params.id];
  client.query(SQL, values, (err, result) => {
    if (err) {
      res.send(err)
    } else {
      res.render('show', { title: 'All Books', oneBook: result.rows[0] })
    }
  });
}

function getAllBooks(req, res) {
  let SQL = 'SELECT book_id, title, author, image_url FROM books';
  client.query(SQL, (err, result) => {
    if (err) {
      res.send(err);
    } else {
      res.render('index', { books: result.rows })
    }
  });
}

module.exports = {
  getOneBook: getOneBook,
  getAllBooks: getAllBooks
}