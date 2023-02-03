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


--
-- populate with data
--
-- generared using
-- curl "https://api.mockaroo.com/api/910b6c20?count=100&key=90eac760" > seed.sql
--
-- want different data? check: https://www.mockaroo.com/910b6c20
--

--men Accessoires
insert into products (name, description, code, price) values ('shoes', 'Guerilla Gym exclusive for men', '816905633-0', 10.5);
insert into products (name, description, code, price) values ('T-Shirts', 'Guerilla Gym exclusive for men.', '077030122-3', 11);
insert into products (name, description, code, price) values ('gym Accessoires', 'Guerilla Gym exclusive.', '445924201-X', 13.5);
insert into products (name, description, code, price) values ('powerlifting', 'Guerilla Gym exclusive for men.', '693155505-7', 13.5);
insert into products (name, description, code, price) values ('', 'Guerilla Gym exclusive', '686928463-6', 14);
insert into products (name, description, code, price) values ('shorts', 'Guerilla Gym exclusive. ', '492662523-7', 14);

CREATE TABLE reviews (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
 product_id integer),
  opmerking varchar
  rating varchar (15)
  );

insert into reviews(opmerking, rating, product_id) values ('Het tshirt is van goede kwaliteit en zit erg comfortabel', '8/10', 2);  
insert into reviews(auteur, opmerking, rating, product_id) values ('Mijn bestelling kwam erg snel en zonder problemen binnen.', '9/10', 3);
insert into reviews(auteur, opmerking, rating,  product_id) values('Mijn bestelling was erg duur en was van slechte kwaliteit.', '3/10', 4);
insert into reviews(auteur, opmerking, rating,  product_id) values ('mijn bestelling kwam redeljk snel en was van goede kwaliteit', '7/10', 5);