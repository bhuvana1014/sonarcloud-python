
FROM python:2

WORKDIR /app

COPY  . .

RUN export UBER_CLIENT_ID="{($env:user ID)}"
RUN export UBER_CLIENT_SECRET="{($env:user password)}"

RUN pip install -r requirements.txt

CMD ["python","app.py"]
