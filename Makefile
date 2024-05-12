start:
	make delete && make merge && make compose
logs:
	docker logs neovim
exec:
	docker exec -it neovim bash
build:
	make merge && src/scripts/build.sh
merge:
	src/scripts/merge.sh
compose:
	docker compose -f docker-compose.dev.yml up -d
delete: 
	docker rm -f neovim && docker image rm coc-nvim-dockerized-neovim && docker volume rm coc-nvim-dockerized_neovim
create-engine:
	docker buildx create --use
