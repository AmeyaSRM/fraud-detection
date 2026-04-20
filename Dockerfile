FROM python:3.9

WORKDIR /app

# Install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Create data folder
RUN mkdir -p /app/data

# Copy dataset (IMPORTANT)
COPY creditcard.csv /app/data/creditcard.csv

# Copy full project
COPY . .

# Expose port
EXPOSE 5000

# Run app
CMD ["python", "app/app.py"]
