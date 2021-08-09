build:
	docker build . --tag pacman_cache
	docker container create --restart=always -p 8080:80 --name="pacman_cache" pacman_cache

start:
	docker container start pacman_cache 

stop:
	docker container stop pacman_cache 
	
clean:
	docker container stop pacman_cache
	docker container rm pacman_cache
	docker volume prune
	docker image rm pacman_cache
