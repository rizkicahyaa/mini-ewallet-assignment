USE ewallet_db;


-- TOP UP Andi
UPDATE wallets
SET balance = balance + 200000
WHERE wallet_id = 1;


INSERT INTO transactions (wallet_id, transaction_type, amount, description)
VALUES (1, 'TOPUP', 200000, 'Top up via bank');


-- TRANSFER Andi ke Budi
UPDATE wallets SET balance = balance - 100000 WHERE wallet_id = 1;
UPDATE wallets SET balance = balance + 100000 WHERE wallet_id = 2;


INSERT INTO transactions (wallet_id, transaction_type, amount, description)
VALUES (1, 'TRANSFER_OUT', 100000, 'Transfer ke Budi');


INSERT INTO transactions (wallet_id, transaction_type, amount, description)
VALUES (2, 'TRANSFER_IN', 100000, 'Transfer dari Andi');