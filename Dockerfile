FROM python:slim-bullseye

COPY requirements.txt .

RUN export UBER_CLIENT_ID=tnfP5KVp043mZTYsWPZNdFmIX28Mvic2
RUN export UBER_CLIENT_SECRET=DdrTIeaKPk_fSUlTO8ZjurkuKoTrCjx5N25qKcSh 
RUN pip3 install -r requirements.txt 

COPY . ./

RUN python app.py
CMD ["python","app.py"]
