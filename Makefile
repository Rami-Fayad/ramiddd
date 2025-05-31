DIR="./srcs/docker-compose.yml"

up: create
	@docker compose -f $(DIR) up --build -d

down:
	@docker compose -f $(DIR) down

fclean:
	@docker system prune -af

create:
	@mkdir -p /home/ral-faya/data/mariadb
	@mkdir -p /home/ral-faya/data/wordpress

delete:
	@sudo rm -rf /home/ral-faya/data/wordpress/*
	@sudo rm -rf /home/ral-faya/data/mariadb/*
