FROM python:slim-bullseye

WORKDIR /app

COPY  requirements.txt ./

RUN export UBER_CLIENT_ID=tnfP5KVp043mZTYsWPZNdFmIX28Mvic2
RUN export UBER_CLIENT_SECRET=DdrTIeaKPk_fSUlTO8ZjurkuKoTrCjx5N25qKcSh 

RUN python -m pip install --upgrade pip

RUN pip install -r requirements.txt

COPY src /app

CMD ["python","app.py"]
