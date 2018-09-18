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
         'The Alchemist By Paulo Coelho While sleeping near a sycamore tree in the sacristy of an abandoned church, Santiago, a shepherd boy, has a recurring dream about a child who tells him that he will find a hidden treasure if he travels to the Egyptian pyramids. An old woman tells Santiago that this dream is prophetic and that he must follow its instructions. Santiago is uncertain, however, since he enjoys the life of a shepherd. Next Santiago meets a mysterious old man who seems able to read his mind. This man introduces himself as Melchizedek, or the King of Salem. He tells Santiago about good and bad omens and says that it is the shepherd boy''s duty to pursue his Personal Legend. Melchizedek then gives Santiago two stones, Urim and Thummim, with which to interpret omens. Santiago wavers briefly before selling his flock and purchasing a ticket to Tangier, in northern Africa, to which he travels by boat. Shortly after he arrives there, a thief steals all of Santiago''s money, so the shepherd boy decides to look for a way to make enough money to return home. He finds work in the shop of a crystal merchant, where Santiago makes improvements that reap considerable financial rewards. After eleven months of working in the shop, Santiago is unsure of how to proceed. Should he return to Andalusia a rich man and buy more sheep? Or should he cross the vast Sahara in pursuit of the hidden treasure of his dreams? He joins a caravan traveling to Egypt. Santiago meets an Englishman who wants to learn the secret of alchemy, or turning any metal into gold, from a famous alchemist who lives at an oasis on the way to the pyramids. While traveling, Santiago begins listening to the desert and discovering the Soul of the World. The caravan eventually reaches the oasis, and there Santiago meets an Arab girl named Fatima and falls in love with her instantly. The caravan leader gathers the travelers together and tells them that tribal warfare prevents them from continuing their journey. Santiago wanders from the oasis into the desert and, seeing two hawks fighting in the sky, has a vision of an army entering the oasis. Because attacking an oasis is a violation of the rules of the desert, Santiago shares his vision with the oasis''s tribal chieftain. Soon afterward, Santiago is confronted by a black-garbed, veiled stranger with a sword, who sits atop a white horse. It is the alchemist. The tribal chieftain arms his men, and they are well-prepared when the oasis is indeed invaded. The alchemist offers to cross the desert with Santiago. Soon the two men enter into an area of intense tribal warfare. Warriors hold the two men captive, but eventually allow them to continue their journey. The alchemist tells Santiago that he needs to return to the oasis, and that the rest of the trip is Santiago''s to make alone so that he can claim his Personal Legend. Santiago arrives at the Egyptian pyramids and begins to dig. He finds nothing buried in the ground. Thieves beat Santiago and rob him of his money. After he tells them of his dream, though, one of the thieves recounts his own dream about a buried treasure in the sacristy of an abandoned church. Returning to Andalusia, Santiago goes back to the church where he dreamed of the treasure near the pyramids. He digs where he slept, beneath a sycamore tree, and there it is: Santiago''s treasure.');

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
