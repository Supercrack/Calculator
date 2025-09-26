FROM python:3.10-alpine

RUN addgroup -S calculator && adduser -S calculator -G calculator

COPY . /app

WORKDIR /app

RUN chown -R calculator:calculator /app

USER calculator

CMD ["python", "calculator/calculator.py"]
