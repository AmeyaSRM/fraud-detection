# Fraud Detection — Cloud Docker Application
### Based on: Kim et al. 2022 — *"Design and Implementation of Cloud Docker Application Architecture Based on Machine Learning in Container Management for Smart Manufacturing"*


- ML model → Logistic Regression trained on Bank Fraud (creditcard.csv)
- Monitoring → Prometheus + Grafana 


## API Endpoints

| Endpoint | Method | Description |
|---|---|---|
| `/` | GET | Interactive dashboard |
| `/api/predict` | POST | `{"amount": 500}` → fraud prediction |
| `/api/stats` | GET | Aggregate transaction stats |
| `/api/transactions` | GET | Recent transaction history |
| `/health` | GET | Health check (model/scaler/dataset loaded) |
| `/metrics` | GET | Prometheus metrics (scraped every 5s) |
| `/api/info` | GET | Model info |


