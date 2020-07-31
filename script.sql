CREATE TABLE clients (
  id int NOT NULL,
  typedoc VARCHAR(3) unique not NULL,
  numberdoc VARCHAR unique not NULL,
  firstname VARCHAR unique not null,
  secondname VARCHAR,
  firstlastname VARCHAR,
  secondlastname VARCHAR,
  email VARCHAR UNIQUE NOT null,
  cellphone int,
  address VARCHAR,
  secondcellphone int,
  country varchar,
  department varchar,
  city varchar,
  FOREIGN KEY (id) REFERENCES users (id)
)

create table rol (
	id integer PRIMARY KEY NOT null,
	name varchar not null,
	status varchar not null default ('active')
)

CREATE TABLE users (
  id SERIAL PRIMARY KEY NOT NULL,
  email VARCHAR UNIQUE NOT null,
  password varchar not null,
  rol integer,
  FOREIGN KEY (rol) REFERENCES rol (id)
)