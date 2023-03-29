
FROM python:2

WORKDIR /app

COPY  . .

RUN export UBER_CLIENT_ID="{$env UBER_CLIENT_ID}"
RUN export UBER_CLIENT_SECRET="{$env UBER_CLIENT_SECRET}"

RUN pip install -r requirements.txt

CMD ["python","app.py"]
