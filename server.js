'use strict';

const books = require('./books')
const express = require('express');
const ejs = require('ejs');

const PORT = process.env.PORT;
const app = express();

app.use(express.json());
app.use(express.urlencoded({ extended: true }));
app.use(express.static('public'));

app.set('view engine', 'ejs');

app.get('/', (req, res) => {
  res.redirect('/books');
});

app.get('/books/new', (req, res) => {
  res.render('pages/books/new');
});


app.get('/books', books.getAllBooks);

app.get('/books/search', books.searchBook);

app.get('/books/:id', books.getOneBook);

app.get('/searches', (req, res) => {
  res.render('pages/search/new');
});


app.post('/books', books.newBook);

app.get('*', (req, res) => {
  res.statusCode = 404;
  res.send('404, page not found')
});

app.listen(PORT, () => {
  console.log(`listening on port ${PORT}!`);
});
