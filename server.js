'use strict';

const pg = require('pg');
const express = require('express');
const ejs = require('ejs');
require('dotenv').config();

const PORT = process.env.PORT;
const app = express();

const conString = process.env.DATABASE_URL;
const client = new pg.Client(conString);

client.connect();
client.on('error', error => {
  console.error(error);
});

app.use(express.json());
app.use(express.urlencoded({ extended: true }));
app.use(express.static('./public'));

app.set('view engine', 'ejs');

app.get('/', (req, res) => {
  res.redirect('/books')
});

app.get('/books', (req, res) => {
  client.query('SELECT title, author, image_url FROM books')
    .then((data) => {
      res.render('index.ejs', { sayHi: 'Hey there!', books: data.rows })
    })
    .catch(err => {
      res.send(err);
    })
});

app.get('*', (req, res) => {
  res.statusCode = 404;
  res.send('404, page not found')
});

app.listen(PORT, () => {
  console.log(`listening on port ${PORT}!`);
});
