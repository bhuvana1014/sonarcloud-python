FROM python2:slim-bullseye

COPY requirements.txt .

RUN export UBER_CLIENT_ID=tnfP5KVp043mZTYsWPZNdFmIX28Mvic2
RUN export UBER_CLIENT_SECRET=DdrTIeaKPk_fSUlTO8ZjurkuKoTrCjx5N25qKcSh 
RUN pip install -r requirements.txt 

COPY . ./

RUN python2 app.py
CMD ["python2","app.py"]
