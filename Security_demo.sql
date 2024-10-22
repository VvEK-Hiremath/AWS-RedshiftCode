CREATE TABLE drivers (
  id VARCHAR(255),
  driver_data TEXT,
  created_at DATE DEFAULT SYSDATE
);

CREATE TABLE customers (
  id VARCHAR(255),
  customer_data TEXT,
  created_at DATE DEFAULT SYSDATE
);

CREATE TABLE orders (
  id VARCHAR(255),
  customer_id VARCHAR(255),
  driver_id VARCHAR(255),
  order_data TEXT,
  created_at DATE DEFAULT SYSDATE
);

CREATE TABLE orders (
  id VARCHAR(255),
  customer_id VARCHAR(255),
  driver_id VARCHAR(255),
  order_data TEXT,
  created_at DATE DEFAULT SYSDATE,
  distkey(customer_id)
);
