start:
	docker compose up -d

stop:
	docker compose stop

build:
	docker compose up --build -d && ./hostsetup.sh
