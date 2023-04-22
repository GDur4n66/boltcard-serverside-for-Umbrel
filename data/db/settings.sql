\c card_db;

DELETE FROM settings;

-- at a minimum, the settings marked 'set this' must be set for your system
-- an explanation for each of the bolt card server settings can be found here
-- https://github.com/boltcard/boltcard/blob/main/docs/SETTINGS.md

INSERT INTO settings (name, value) VALUES ('LOG_LEVEL', 'DEBUG');
INSERT INTO settings (name, value) VALUES ('AES_DECRYPT_KEY', 'ランダム値'); -- set this. $ hexdump -vn16 -e'4/4 "%08x" 1 "\n"' /dev/random
INSERT INTO settings (name, value) VALUES ('HOST_DOMAIN', '自分のドメイン名'); -- set this.
INSERT INTO settings (name, value) VALUES ('MIN_WITHDRAW_SATS', '1');
INSERT INTO settings (name, value) VALUES ('MAX_WITHDRAW_SATS', '1000000');
INSERT INTO settings (name, value) VALUES ('LN_HOST', '10.21.21.9');
INSERT INTO settings (name, value) VALUES ('LN_PORT', '10009');
INSERT INTO settings (name, value) VALUES ('LN_TLS_FILE', '/boltcard/tls.cert');
INSERT INTO settings (name, value) VALUES ('LN_MACAROON_FILE', '/boltcard/admin.macaroon');
INSERT INTO settings (name, value) VALUES ('FEE_LIMIT_SAT', '10');
INSERT INTO settings (name, value) VALUES ('FEE_LIMIT_PERCENT', '0.5');
INSERT INTO settings (name, value) VALUES ('LN_TESTNODE', '');
INSERT INTO settings (name, value) VALUES ('FUNCTION_LNURLW', 'ENABLE');
INSERT INTO settings (name, value) VALUES ('FUNCTION_LNURLP', 'DISABLE');
INSERT INTO settings (name, value) VALUES ('FUNCTION_EMAIL', 'DISABLE');
INSERT INTO settings (name, value) VALUES ('AWS_SES_ID', '');
INSERT INTO settings (name, value) VALUES ('AWS_SES_SECRET', '');
INSERT INTO settings (name, value) VALUES ('AWS_SES_EMAIL_FROM', '');
INSERT INTO settings (name, value) VALUES ('EMAIL_MAX_TXS', '');
INSERT INTO settings (name, value) VALUES ('FUNCTION_LNDHUB', 'ENABLE');
INSERT INTO settings (name, value) VALUES ('LNDHUB_URL', 'http://10.21.100.103:9002'); -- see docker-compose.yml
INSERT INTO settings (name, value) VALUES ('FUNCTION_INTERNAL_API', 'ENABLE');
