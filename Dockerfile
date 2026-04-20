FROM python:3.9

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

RUN apt-get update && apt-get install -y wget

# copy project FIRST
COPY . .

# create data folder
RUN mkdir -p /app/data

# download dataset AFTER copy
RUN wget -O /app/data/creditcard.csv https://storage.googleapis.com/download.tensorflow.org/data/creditcard.csv

EXPOSE 5000

CMD ["python", "app/app.py"]
