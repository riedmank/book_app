'use strict';

const pg = require('pg');
const express = require('express');
const ejs = require('ejs');//do we need this?
require('dotenv').config();

const PORT = process.env.PORT;
const app = express();

const conString = process.env.DATABASE_URL;
const client = new pg.Client(conString);
client.connect();

client.on('error', error => console.error(error)); //one line

app.use(express.json());
app.use(express.urlencoded({ extended: true }));
app.use(express.static('public')); //don't need ./

app.set('view engine', 'ejs');

app.get('/', (req, res) => {
  res.redirect('/books')
});

app.get('/books/:id', getOneBook);

function getOneBook(req, res) {
  let SQL = 'SELECT * FROM books WHERE book_id = $1';
  let values = [ req.params.id ];
  client.query(SQL, values, (err, result) => {
    if(err) {
      res.send(err)
    } else {
      res.render('partials/show', {title: 'All Books', oneBook: result.rows[0]})
    }
  });
}

app.get('/books', (req, res) => { //add a helper function: get books app.get('/books', getBooks); //app.get('/books/:id', getOneBook);
  client.query('SELECT book_id, title, author, image_url FROM books') //sql variable
    .then((data) => {
      res.render('index', { sayHi: 'Hey there!', books: data.rows }) //remove file type
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
