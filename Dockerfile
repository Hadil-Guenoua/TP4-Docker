FROM python:3.10-slim

WORKDIR /app

COPY . /app

RUN pip install --no-cache-dir pandas numpy scipy matplotlib seaborn scikit-learn 

CMD ["sh", "-c", "python Student_Analysis.py && sleep infinity"]
