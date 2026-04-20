FROM python:3.9

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# install wget
RUN apt-get update && apt-get install -y wget

# create data folder
RUN mkdir -p /app/data

# download dataset
RUN wget -O /app/data/creditcard.csv https://storage.googleapis.com/download.tensorflow.org/data/creditcard.csv

# copy project
COPY . .

EXPOSE 5000

CMD ["python", "app/app.py"]
