FROM python:3.9-slim 

ARG SECRET_KEY
ARG DEBUG

ENV SECRET_KEY=$SECRET_KEY
ENV DEBUG=$DEBUG

WORKDIR /app

COPY ./requirements.txt /app/

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 8030

CMD ["python", "manage.py", "runserver", "0.0.0.0:8030"]
