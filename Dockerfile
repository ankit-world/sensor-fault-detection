# FROM python:3.7

# RUN apt update -y && apt install awscli -y

# WORKDIR /app

# COPY . /app

# RUN pip install -r requirements.txt

# EXPOSE 8080

# CMD ["python3", "main.py", "--host", "0.0.0.0", "--port", "8080"]


FROM python:3.8.5-slim-buster
RUN apt update -y && apt install awscli -y
WORKDIR /app

COPY . /app
RUN pip install -r requirements.txt

CMD ["python3", "main.py"]