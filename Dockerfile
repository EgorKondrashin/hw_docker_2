FROM python:3.9

WORKDIR /app

COPY . .

ENV SECRET_KEY=UQWBDNOWHE&!@#*(*YU!@#YFyibjk1n38yo12fg3iuohb!*@#)ownfm \
    DEBUG=True \
    ALLOWED_HOSTS=127.0.0.1 \
    DB_ENGINE=django.db.backends.sqlite3 \
    DB_NAME=db.sqlite3

RUN pip3 install -r requirements.txt

RUN python manage.py migrate

EXPOSE 6060

CMD ["python", "manage.py", "runserver", "0.0.0.0:6060"]
