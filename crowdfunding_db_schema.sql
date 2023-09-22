CREATE TABLE category (
	category_id VARCHAR(10) NOT NULL PRIMARY KEY,
	category_name VARCHAR(100) NOT NULL
);

CREATE TABLE subcategory (
	subcategory_id VARCHAR(10) NOT NULL PRIMARY KEY,
	subcategory_name VARCHAR(100) NOT NULL
);

CREATE TABLE contacts (
	contact_id INTEGER NOT NULL PRIMARY KEY,
	first_name VARCHAR(100) NOT NULL,
	last_name VARCHAR(100) NOT NULL,
	email VARCHAR(100) NOT NULL
);

CREATE TABLE campaign (
	cf_id INTEGER NOT NULL PRIMARY KEY,
	contact_id INTEGER NOT NULL,
	company_name VARCHAR(256) NOT NULL,
	description TEXT NOT NULL,
	goal NUMERIC NOT NULL,
	pledged NUMERIC NOT NULL,
	outcome VARCHAR(100) NOT NULL, 
	backers_count INTEGER NOT NULL,
	country VARCHAR(10) NOT NULL,
	currency VARCHAR(10) NOT NULL,
	launch_date TIMESTAMP WITHOUT TIME ZONE,
	end_date TIMESTAMP WITHOUT TIME ZONE,
	category_id VARCHAR(10) NOT NULL,
	subcategory_id VARCHAR(10) NOT NULL,
	FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
	FOREIGN KEY (category_id) REFERENCES category(category_id),
	FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)
);

SELECT * FROM campaign;
SELECT * FROM category;
SELECT * FROM contacts;
SELECT * FROM subcategory;

