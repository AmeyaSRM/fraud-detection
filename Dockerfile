FROM python:3.9

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Install wget
RUN apt-get update && apt-get install -y wget

# Create data folder
RUN mkdir -p /app/data

# Download dataset (🔥 KEY FIX)
RUN wget -O /app/data/creditcard.csv \
https://storage.googleapis.com/download.tensorflow.org/data/creditcard.csv

# Copy project
COPY . .

EXPOSE 5000

CMD ["python", "app/app.py"]
