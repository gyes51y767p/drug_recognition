FROM python:3.11
LABEL authors="liangshenghao"
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt
EXPOSE $PORT
CMD gunicorn --bind 0.0.0.0:$PORT app:app