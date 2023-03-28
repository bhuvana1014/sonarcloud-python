
FROM python:2

WORKDIR /app

COPY  . .

RUN export UBER_CLIENT_ID="{$env CLIENT_ID}"
RUN export UBER_CLIENT_SECRET="{$env CLIENT_SECRET}"

RUN pip install -r requirements.txt

CMD ["python","app.py"]
