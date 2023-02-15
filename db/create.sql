--
-- create tables
--

CREATE TABLE products (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  code VARCHAR(15),
  name VARCHAR(255),
  description TEXT,
  price NUMERIC(10, 2)
);

CREATE TABLE reviews (
id INTEGER PRIMARY KEY AUTOINCREMENT,
 auteur_id INTEGER,
 product_id INTEGER,
  opmerking TEXT,
  rating NUMERIC(1, 10)
  );

CREATE TABLE auteur (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
 name VARCHAR(255)
);
--
-- populate with data
--
-- generared using
-- curl "https://api.mockaroo.com/api/910b6c20?count=100&key=90eac760" > seed.sql
--
-- want different data? check: https://www.mockaroo.com/910b6c20
--

--informatie voor table producten
insert into products (name, description, code, price) values ('Shoes', 'Guerilla Gym exclusive for men', '816905633-0', 10.5);
insert into products (name, description, code, price) values ('T-Shirts', 'Guerilla Gym exclusive for men.', '077030122-3', 11);
insert into products (name, description, code, price) values ('straps', 'Guerilla Gym exclusive.', '445924201-X', 13.5);
insert into products (name, description, code, price) values ('Powerlifting', 'Guerilla Gym exclusive for men.', '693155505-7', 13.5);
insert into products (name, description, code, price) values ('Hoodies & Sweaters', 'Guerilla Gym exclusive', '686928463-6', 14);
insert into products (name, description, code, price) values ('Shorts', 'Guerilla Gym exclusive. ', '492662523-7', 14);
insert into products (name, description, code, price) values ('protein', 'Guerilla Gym exclusive. ', '492665523-7', 20);
insert into products (name, description, code, price) values ('sleeves', 'Guerilla Gym exclusive. ', '192665523-7', 10);
insert into products (name, description, code, price) values ('product 2', 'Guerilla Gym exclusive. ', '292665523-7', 10);
insert into products (name, description, code, price) values ('product 3', 'Guerilla Gym exclusive. ', '392665523-7', 10);
insert into products (name, description, code, price) values ('product 4', 'Guerilla Gym exclusive. ', '992665523-7', 10);
insert into products (name, description, code, price) values ('product 5', 'Guerilla Gym exclusive. ', '912665523-7', 10);

-- informatie voor table reviews
insert into reviews(auteur_id, opmerking, rating,  product_id) values ( 3, 'Super kwaliteit ondanks dat het goedkoop is!', '8/10', 1);
insert into reviews(auteur_id, opmerking, rating, product_id) values (2, 'Het tshirt is van goede kwaliteit en zit erg comfortabel.', '8/10', 2);  
insert into reviews(auteur_id, opmerking, rating, product_id) values (1, 'Mijn bestelling kwam erg snel en zonder problemen binnen.', '9/10', 3);
insert into reviews(auteur_id, opmerking, rating,  product_id) values(4, 'Mijn bestelling was erg duur en was van slechte kwaliteit.', '3/10', 4);
insert into reviews(auteur_id, opmerking, rating,  product_id) values (5, 'mijn bestelling kwam redeljk snel en was van goede kwaliteit.', '7/10', 5);
insert into reviews(auteur_id, opmerking, rating,  product_id) values (6, 'schoenen zitten erg lekker en een goede levering, ik zou wel de schoenen een maat kleiner bestellen.', '7/10', 6);

--auteur_id
insert into auteur (name) values ('gemairo van Essen');
insert into auteur (name) values ('Joop Bakker');
insert into auteur (name) values ('010lover');
insert into auteur (name) values ('gymmeneer123');
insert into auteur (name) values ('Mnr. de Voet');
insert into auteur (name) values ('Mvr. ei');