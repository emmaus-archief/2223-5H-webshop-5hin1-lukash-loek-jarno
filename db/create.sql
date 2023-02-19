--
-- create tables
--

CREATE TABLE products (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  code VARCHAR(15),
  name VARCHAR(255),
  description TEXT,
  price NUMERIC(10, 2),
  clothes_id VARCHAR,
  accessories_id VARCHAR
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

CREATE TABLE Clothes (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  products_id INTEGER,
   name TEXT
);

CREATE TABLE accessories(
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  products_id INTEGER,
   name TEXT
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
insert into products (name, description, code, price, clothes_id ) values ('Shoes', 'Guerilla Gym exclusive for men', '816905633-0', 49.99, 1);
insert into products (name, description, code, price, clothes_id) values ('T-Shirts', 'Guerilla Gym exclusive for men.', '077030122-3', 24.99, 2);
insert into products (name, description, code, price, accessories_id) values ('straps', 'Guerilla Gym exclusive.', '445924201-X', 13.99, 1);
insert into products (name, description, code, price, accessories_id) values ('Powerlifting', 'Guerilla Gym exclusive for men.', '693155505-7', 13.5, 2);
insert into products (name, description, code, price, clothes_id) values ('Hoodies & Sweaters', 'Guerilla Gym exclusive', '686928463-6', 29.99, 3);
insert into products (name, description, code, price, clothes_id) values ('Shorts', 'Guerilla Gym exclusive. ', '492662523-7', 15.99, 4);
insert into products (name, description, code, price,  accessories_id) values ('1 Kg Whey protein', 'Guerilla Gym exclusive. ', '492665523-7', 39.99, 3);
insert into products (name, description, code, price,  accessories_id) values ('sleeves', 'Guerilla Gym exclusive. ', '192665523-7', 24.99, 4);
insert into products (name, description, code, price,  accessories_id) values ('belt', 'Guerilla Gym exclusive. ', '292665523-7', 49.99, 5);
insert into products (name, description, code, price, clothes_id) values ('gloves', 'Guerilla Gym exclusive. ', '392665523-7', 9.99, 5);
insert into products (name, description, code, price, clothes_id) values ('cap', 'Guerilla Gym exclusive. ', '992665523-7', 12.99, 6);
insert into products (name, description, code, price,  accessories_id) values ('shakecup', 'Guerilla Gym exclusive. ', '912665523-7', 4.99, 6);

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

-- clothes
insert into  clothes (name, products_id) values ('Shoes', 1);
insert into  clothes (name, products_id) values ('T-shirts', 2);
insert into  clothes (name, products_id) values ('Hoodies & Sweaters', 5);
insert into  clothes (name, products_id) values ('Shorts', 6);
insert into  clothes (name, products_id) values ('gloves', 10);
insert into  clothes (name, products_id) values ('cap', 11);

--accessories
insert into  accessories (name, products_id) values ('straps', 3);
insert into  accessories (name, products_id) values ('Powerlifting', 4);
insert into  accessories (name, products_id) values ('protein', 7);
insert into  accessories (name, products_id) values ('sleeves', 8);
insert into  accessories (name, products_id) values ('belt', 9);
insert into  accessories (name, products_id) values ('shakecup', 12);