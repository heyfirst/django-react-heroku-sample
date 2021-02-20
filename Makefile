dev:
	docker-compose -f docker-compose.yml up 

dev-build:
	docker-compose -f docker-compose.yml rm
	docker-compose -f docker-compose.yml up --build