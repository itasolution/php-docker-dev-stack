up:
	docker compose up -d

down:
	docker compose down

restart:
	docker compose down && docker compose up -d

logs:
	docker compose logs -f

ps:
	docker compose ps

config:
	docker compose config
