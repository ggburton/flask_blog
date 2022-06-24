FROM python:3

WORKDIR /code
COPY ./src/requirements.txt /code/
RUN pip3 install -r requirements.txt

COPY ./src /code/

CMD [ "sh", "-c", "flask run --host='0.0.0.0'"]
