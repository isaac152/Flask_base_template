include .env


build:
	docker build --tag ${APP_NAME} . 

dev:
	docker run --rm -v '$(shell pwd):/app' --name ${APP_NAME} -p ${PORT}:5000 ${APP_NAME}

init: build dev

cleanup:
	docker rm -f ${APP_NAME} 

test:
	docker run --rm ${APP_NAME} sh -c 'python -m pytest --exitfirst'

create_blueprint:
	cp -r ./app/core/ ./app/${app_name} && find ./app/${app_name} -type f -exec sed -i 's/main/${app_name}/g' {} + && echo "\tapp/${app_name}/__init__.py:E402:F401" >> .flake8

help:
	@echo build: Build the docker container with the app name 
	@echo dev: Run the container in detach mode
	@echo init: Build and run the container
	@echo cleanup: Remove the project container
	@echo test: Execute the test if the container is running
	@echo create_blueprint: Create a new blueprint inside the app folder. Use app_name = "" to name the new blueprint
