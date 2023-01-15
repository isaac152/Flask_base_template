import os

from dotenv import load_dotenv

load_dotenv()

HOST = os.environ.get("HOST")
PORT = os.environ.get("PORT")


class Config:
    DEBUG = os.environ.get("DEBUG", "true").lower() == "true"
    SECRET_KEY = os.environ.get("SECRET_KEY", "lmao")
