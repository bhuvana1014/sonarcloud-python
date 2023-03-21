FROM python:2

WORKDIR /app

COPY  . .

RUN export UBER_CLIENT_ID=tnfP5KVp043mZTYsWPZNdFmIX28Mvic2
RUN export UBER_CLIENT_SECRET=DdrTIeaKPk_fSUlTO8ZjurkuKoTrCjx5N25qKcSh

RUN pip install -r requirements.txt


CMD ["python","app.py"]
