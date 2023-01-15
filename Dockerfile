FROM python:3.10-slim

WORKDIR /app

COPY ./requirements/base.txt requirements.txt
RUN pip3 install --upgrade pip -r requirements.txt

COPY . .

CMD ["gunicorn", "--bind", "0.0.0.0:5000", "--reload", "run:app"]
