FROM python:3.7
RUN apt update -y && apt install awscli -y
WORKDIR /app

COPY . /app

RUN pip install -r requirements.txt

EXPOSE 5000

CMD ["python3", "main.py", "--host", "0.0.0.0", "--port", "5000"]