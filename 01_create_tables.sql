-- Membuat database
CREATE DATABASE ewallet_db;
USE ewallet_db;


-- Tabel users
CREATE TABLE users (
user_id INT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(100) NOT NULL,
email VARCHAR(100) UNIQUE NOT NULL,
created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


-- Tabel wallets
CREATE TABLE wallets (
wallet_id INT AUTO_INCREMENT PRIMARY KEY,
user_id INT NOT NULL,
balance DECIMAL(12,2) DEFAULT 0,
FOREIGN KEY (user_id) REFERENCES users(user_id)
);


-- Tabel transactions
CREATE TABLE transactions (
transaction_id INT AUTO_INCREMENT PRIMARY KEY,
wallet_id INT NOT NULL,
transaction_type ENUM('TOPUP','TRANSFER_OUT','TRANSFER_IN') NOT NULL,
amount DECIMAL(12,2) NOT NULL,
description VARCHAR(255),
transaction_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
FOREIGN KEY (wallet_id) REFERENCES wallets(wallet_id)
);