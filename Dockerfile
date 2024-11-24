FROM python:3.12-slim-bluster

RUN apt update -y && apt install awscii -y
WORKDIR /app

COPY . /app/
RUN pip install -r requiements.txt

CMD ["python3", "app.py"]