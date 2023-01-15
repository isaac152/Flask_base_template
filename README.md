# Base Template Flask app

This flask project template is based in a MVC architecture.

The main idea was mantain this the more simple as possible, so feel free to add the dependecies you consider are the best fit for your needs

## How to use

You will need to install [docker](https://www.docker.com/) if you want to use all the commands in the Makefile.

 1. Clone the repo, copy the files or just click [here](https://github.com/isaac152/Flask_base_template/generate)
 2. Rename with your project name
 3. Run `cp -n .env.example .env` to genearte the .env file
 4. Change the .env file and specially the `APP_NAME`
 5. Run `python -m venv env` to create the virtual enviroment
 6. Run `source env/bin/activate` to enter into the virtual enviroment
 7. Run `python -m pip install -r ./requirements/dev.txt`  to install the git hooks.
 8. Run `pre-commit install`
 9. Run `make init` and start developing

##  Features

- 🤖MakeFile to automatizate most used commands. If you want more info, use `make help` 
- 🌱Testing with Pytest
- 🐳 Simple but effective docker container
- ✅Git hooks with flaske8, black and isort 
 
## To do

- CI with Github Actions
- Docker-compose mock to edit if you need more services.