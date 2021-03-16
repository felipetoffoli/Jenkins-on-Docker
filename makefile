  
build:
	@docker-compose build
run:
	@docker-compose up -d
stop:
	@docker-compose down
clean-data: 
	@docker-compose down -v
clean-images:
	@docker rmi `docker images -q -f "dangling=true"`
