logs:
	docker logs neovim
exec:
	docker exec -it neovim bash
build:
	sh src/scripts/build.sh
compose:
	docker compose up -d
delete: 
	docker rm -f neovim && docker image rm neovim-dockerized-neovim && docker volume rm neovim-dockerized_neovim-coc
create-engine:
	docker buildx create --use
