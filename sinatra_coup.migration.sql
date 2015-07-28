CREATE DATABASE sinatra_coupons;

\c sinatra_coupons

CREATE TABLE sinatra_coupons (id SERIAL PRIMARY KEY, title varchar(255), description text, product int, discount money, exp_date date);

INSERT INTO sinatra_coupons (title, description, product, discount, exp_date)
VALUES
('BOGO', 'Buy one get one free!', 123456, 10.00, '2015, 12, 31');

('Free', 'Get your shit for free!', 1234567, 0.00, '2020, 12, 31');
