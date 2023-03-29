
FROM python:2

WORKDIR /app

COPY  . .

RUN export UBER_CLIENT_ID="$(UBER_CLIENT_ID)"
RUN export UBER_CLIENT_SECRET="$(UBER_CLIENT_SECRET)"

RUN pip install -r requirements.txt

CMD ["python","app.py"]
