CREATE TABLE meteorite_main (
  	id integer,
  	name VARCHAR(50),
 	recclass VARCHAR(50),
  	mass_grams float,
	fall VARCHAR(10),
  	year integer,
	reclat float,
	reclong float,
	geolocation varchar(50),
	geometry varchar(50),
	elevation float,
	country varchar(50),
	state_abbrev varchar(10),
  	PRIMARY KEY (id)
);

CREATE TABLE state (
	state_abbrev varchar(10),
	state VARCHAR(50),
	FIPS integer,
  	area_sqkm integer,
	country varchar(50),
  	PRIMARY KEY (state_abbrev)
);

CREATE TABLE landcover (
	id Serial,
	state_abbrev varchar(10),
  	variable varchar(50),
  	value float,
  	PRIMARY KEY (id)
);

CREATE TABLE meteorite_type (
	recclass VARCHAR(50),
  	meteorite_class_subclass VARCHAR(50),
	meteorite_class VARCHAR(50),
  	meteorite_type VARCHAR(50),
  	PRIMARY KEY (recclass)
);

CREATE TABLE meteorite_landings_raw (
  	name VARCHAR(50),
	id integer,
	nametype VARCHAR(20),
 	recclass VARCHAR(100),
  	mass_grams float,
	fall VARCHAR(10),
  	year integer,
	reclat float,
	reclong float,
	geolocation varchar(50),
  	PRIMARY KEY (id)
);