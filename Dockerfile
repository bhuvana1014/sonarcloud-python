FROM python2:slim-bullseye

WORKDIR /app

COPY  requirements.txt ./

RUN export UBER_CLIENT_ID=tnfP5KVp043mZTYsWPZNdFmIX28Mvic2
RUN export UBER_CLIENT_SECRET=DdrTIeaKPk_fSUlTO8ZjurkuKoTrCjx5N25qKcSh 

RUN pip3 install -r requirements.txt

COPY src /app

RUN python2 app.py

CMD ["python2","app.py"]
