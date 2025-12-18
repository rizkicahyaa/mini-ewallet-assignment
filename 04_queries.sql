USE ewallet_db;


-- Cek saldo user
SELECT u.name, w.balance
FROM users u
JOIN wallets w ON u.user_id = w.user_id;


-- Riwayat transaksi user
SELECT u.name, t.transaction_type, t.amount, t.transaction_date
FROM transactions t
JOIN wallets w ON t.wallet_id = w.wallet_id
JOIN users u ON w.user_id = u.user_id
ORDER BY t.transaction_date DESC;