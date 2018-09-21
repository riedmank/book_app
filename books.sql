CREATE TABLE IF NOT EXISTS 
books(
  book_id SERIAL PRIMARY KEY,
  author VARCHAR(256),
  title VARCHAR(256),
  isbn VARCHAR(256),
  image_url VARCHAR(256),
  description TEXT
);

INSERT INTO books(author, title, isbn, image_url, description)
  VALUES('Frank Herbert', 
         'Dune', 
         'ISBN_13 9780441013593', 
         'http://books.google.com/books/content?id=B1hSG45JCX4C&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api', 
         'Follows the adventures of Paul Atreides, the son of a betrayed duke given up for dead on a treacherous desert planet and adopted by its fierce, nomadic people, who help him unravel his most unexpected destiny.');

INSERT INTO books(author, title, isbn, image_url, description)
  VALUES('Cixin Liu',
         'The Three-Body Problem',
         'ISBN_13 9781466853447',
         'http://books.google.com/books/content?id=ZrNzAwAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api',
         '\"Wildly imaginative, really interesting.\" —President Barack Obama on The Three-Body Problem trilogy The Three-Body Problem is the first chance for English-speaking readers to experience the Hugo Award-winning phenomenon from China''s most beloved science fiction author, Liu Cixin. Set against the backdrop of China''s Cultural Revolution, a secret military project sends signals into space to establish contact with aliens. An alien civilization on the brink of destruction captures the signal and plans to invade Earth. Meanwhile, on Earth, different camps start forming, planning to either welcome the superior beings and help them take over a world seen as corrupt, or to fight against the invasion. The result is a science fiction masterpiece of enormous scope and vision. The Remembrance of Earth''s Past Trilogy The Three-Body Problem The Dark Forest Death''s End Other Books Ball Lightning (forthcoming) At the Publisher''s request, this title is being sold without Digital Rights Management Software (DRM) applied.');

INSERT INTO books(author, title, isbn, image_url, description)
  VALUES('P Coelho',
         'The Alchemist',
         'ISBN_10 1512092452',
         'http://books.google.com/books/content?id=A91urgEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api',
         'The Alchemist By Paulo Coelho While sleeping near a sycamore tree in the sacristy of an abandoned church, Santiago, a shepherd boy, has a recurring dream about a child who tells him that he will find a hidden treasure if he travels to the Egyptian pyramids. An old woman tells Santiago that this dream is prophetic and that he must follow its instructions. Santiago is uncertain, however, since he enjoys the life of a shepherd. Next Santiago meets a mysterious old man who seems able to read his mind. This man introduces himself as Melchizedek, or the King of Salem.');

INSERT INTO books(author, title, isbn, image_url, description)
  VALUES('Alexandre Dumas',
         'The Three Musketeers',
         'ISBN_13 9781620280874',
         'http://books.google.com/books/content?id=UT7tAQAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api',
         'All for One, One for All! The classic tale of swordplay, mystery, and unbreakable friendship! Dumas''s tale of swashbuckling and heroism follows the fortunes of d''Artagnan, a headstrong country boy who travels to Paris to join the Musketeers - the bodyguard of King Louis XIII. Here he falls in with Athos, Porthos and Aramis, and the four friends soon find themselves caught up in court politics and intrigue. Together they must outwit Cardinal Richelieu and his plot to gain influence over the King, and thwart the beautiful spy Milady''s scheme to disgrace the Queen. In The Three Musketeers, Dumas breathed fresh life into the genre of historical romance, creating a vividly realized cast of characters and a stirring dramatic narrative. Beautifully illustrated, this classic tale will capture children''s interest and spark their imagination inspiring a lifelong love of literature and reading.');

INSERT INTO books(author, title, isbn, image_url, description)
  VALUES('Victor Hugo',
         'Les Miserables, Volume I',
         'ISBN_10 0986400661',
         'http://books.google.com/books/content?id=r4JDjwEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api',
         'Volume one of five The unabridged form of this story runs to over 1,900 pages in either French or English, necessitating multiple volumes of this bilingual edition, which is designed to assist those learning French. The original French text appears on the right-hand pages of the book, with the corresponding English translation on the left-hand pages. Other bilingual books available from Sleeping Cat Books: \"The Picture of Dorian Gray Selected Works of Edgar Allan Poe Fables of Jean de La Fontaine Candide Shakespeare''s Sonnets New Fairy Tales for Small Children The Tales of Mother Goose The Count of Monte Cristo The Last of the Mohicans Madame Bovary\"');
