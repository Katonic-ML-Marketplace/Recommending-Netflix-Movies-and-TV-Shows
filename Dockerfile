FROM python:3.8.2-slim

RUN mkdir -p data image

COPY app.py .
COPY data/netflix_titles.csv data/.
COPY image/logo.png image/.
COPY image/favicon.ico image/.
COPY requirements.txt .

RUN pip install -r requirements.txt

CMD streamlit run app.py --server.port=8050 --server.address=0.0.0.0 --logger.level error
