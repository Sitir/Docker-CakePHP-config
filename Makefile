
include .env


help:
	@echo ""
	@echo "prepare-distro 			-creates folders /myapp/${APP_NAME}"
	@echo "docker-start 			-lunch docker"
	@echo "docker-stop 			-stop docker"
	@echo "docker-restart 			-restart docerk"
	@echo "docker-connect 			-connect to machine by shell (bash)"
	@echo "composer-up update   		-update project already existed make sure to set the app name in .env file."
	@echo "composer-generate-cake    	-generate new project as name in .env file make sure to set it."
	@echo ""


composer-up:
	@docker run --rm -v $(shell pwd)/myapp/${APP_NAME}:/app composer update
	@make setOwner
composer-generate-cake:
	@docker run --rm -v $(shell pwd)/myapp:/app composer create-project --prefer-dist --ignore-platform-reqs cakephp/app ${APP_NAME}
	@make setOwner
prepare-distro:
	@mkdir myapp 
	@mkdir /myapp/${APP_NAME} 	
	@make setOwner		
docker-start: 
	@docker-compose up -d
docker-stop:
	@docker-compose down -v
	
docker-restart:
	@docker-compose down -v
	@docker-compose up -d

docker-connect:
	 @docker exec -i -t php /bin/bash 

setOwner:
	@$(shell chown -R $(SUDO_USER):$(shell id -g -n $(SUDO_USER)) "$(shell pwd)/myapp")




