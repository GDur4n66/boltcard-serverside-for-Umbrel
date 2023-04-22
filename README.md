# boltcard-serverside-for-Umbrel
Boltcard serverサイド(serverとLndHub)をUmbrelで構成する為のファイル一式

オリジナルではCaddyも含まれている。<br>
この構成では含まれてない。ドメイン名とそのためのリバースプロキシの構成は各自で用意して。<br>


data/db/settings.sqlで以下2つを自分で書き換える。<br>
INSERT INTO settings (name, value) VALUES ('AES_DECRYPT_KEY', 'ランダム値'); -- set this. $ hexdump -vn16 -e'4/4 "%08x" 1 "\n"' /dev/random <br>
INSERT INTO settings (name, value) VALUES ('HOST_DOMAIN', '自分のドメイン名'); -- set this.
