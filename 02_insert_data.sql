USE ewallet_db;


-- Insert user
INSERT INTO users (name, email) VALUES
('Andi', 'andi@email.com'),
('Budi', 'budi@email.com');


-- Insert wallet
INSERT INTO wallets (user_id, balance) VALUES
(1, 500000),
(2, 300000);