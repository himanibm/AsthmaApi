FROM python

WORKDIR /app

COPY . .

RUN pip install -r requirements.txt

EXPOSE 3000

ENTRYPOINT FLASK_APP=./app.py flask run --host=0.0.0.0 --port=3000
