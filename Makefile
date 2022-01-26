
nightly:
	rustup override set nightly

install_diesel_cli:
	cargo install diesel_cli --no-default-features --features postgres

init_db:
	docker run --rm -v "e:\desktop\github\rms":/app willsquire/diesel-cli --database-url="mysql://root:password@192.168.1.127/db" setup


revert:
	docker run --rm -v "e:\desktop\github\rms":/app willsquire/diesel-cli --database-url="mysql://root:password@192.168.1.127/db" migration revert
generate:
	docker run --rm -v "e:\desktop\github\rms":/app willsquire/diesel-cli --database-url="mysql://root:password@192.168.1.127/db" migration generate create_users_table


# this target will generate src\schema.rs
migration_run:
	docker run --rm -v "e:\desktop\github\rms":/app willsquire/diesel-cli --database-url="mysql://root:password@192.168.1.127/db" migration run

tree:
	cargo tree


#    title: String,
#    text: String,
test_post:
	curl -XPOST -d "{\"title\": \"text\",\"text\": \"afaf\"}"  http://127.0.0.1:8000/sqlx
test_get:
	curl -XGET http://127.0.0.1:8000/sqlx

offline:
	cargo sqlx prepare --database-url mysql://root:password@192.168.1.127/db