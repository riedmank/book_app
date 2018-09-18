CREATE TABLE IF NOT EXISTS 
books(
  book_id SERIAL PRIMARY KEY,
  author VARCHAR(256),
  title VARCHAR(256),
  isbn VARCHAR(256),
  image_url VARCHAR(256),
  description VARCHAR(1024)
);

INSERT INTO books(author, title, isbn, image_url, description)
  VALUES('Frank Herbert', 
         'Dune', 
         'ISBN_13 9780441013593', 
         'http://books.google.com/books/content?id=B1hSG45JCX4C&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api', 
         'Follows the adventures of Paul Atreides, the son of a betrayed duke given up for dead on a treacherous desert planet and adopted by its fierce, nomadic people, who help him unravel his most unexpected destiny.');