# FROM python:3.8-alpine

# COPY . /var/www

# WORKDIR /var/www

# RUN python3.8 -m venv venv &&  source venv/bin/activate && pip install -r requirements.txt

# ENTRYPOINT uvicorn main:app 0.0.0.0:8000 --reload

# EXPOSE 8000

FROM python3.8-alpine
RUN pip install fastapi uvicorn
COPY . /var/www
WORKDIR /var/www
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "15400"]