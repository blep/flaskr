FROM python:3.9-alpine

WORKDIR /app
COPY . /app

RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 5000
CMD ["python", "flaskr/flaskr.py"]
