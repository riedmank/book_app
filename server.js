'use strict';

const books = require('./books');
const express = require('express');
const ejs = require('ejs');

const methodOverride = require('method-override');

const PORT = process.env.PORT;
const app = express();

app.use(express.json());
app.use(express.urlencoded({ extended: true }));
app.use(express.static('public'));

app.use(methodOverride(function (req, res) {
  if (req.body && typeof req.body === 'object' && '_method' in req.body) {
    // look in urlencoded POST bodies and delete it
    var method = req.body._method
    delete req.body._method
    return method
  }
}))

app.set('view engine', 'ejs');

app.get('/', (req, res) => {
  res.redirect('/books');
});

app.get('/books/:id/edit', books.editBook);

app.get('/books/new', (req, res) => {
  res.render('pages/books/new');
});

app.delete('/books/:id', books.deleteOneBook);

app.get('/books', books.getAllBooks);

app.get('/books/search', books.searchBook);

app.get('/books/:id', books.getOneBook);

app.get('/searches', (req, res) => {
  res.render('pages/search/new');
});

app.post('/books', books.newBook);

app.get('*', (req, res) => {
  res.statusCode = 404;
  res.send('404, page not found');
});

app.listen(PORT, () => {
  console.log(`listening on port ${PORT}!`);
});
