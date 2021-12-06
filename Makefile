
nightly:
	rustup override set nightly

install_diesel_cli:
	cargo install diesel_cli --no-default-features --features postgres

init_db:
	docker run --rm -v "C:\Users\Administrator\Desktop\github\rms":/app willsquire/diesel-cli --database-url="mysql://root:abcd1234d@192.168.1.127/db" setup

tree:
	cargo tree


#    title: String,
#    text: String,
test_post:
	curl -XPOST -d "{\"title\": \"text\",\"text\": \"afaf\"}"  http://127.0.0.1:8000/sqlx
test_get:
	curl -XGET http://127.0.0.1:8000/sqlx
