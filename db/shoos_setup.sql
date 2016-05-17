DROP TABLE orders;

CREATE TABLE orders (

  id serial4 primary key,
  first_name VARCHAR(255),
  last_name VARCHAR(255),
  size INT4,
  quantity INT4

);