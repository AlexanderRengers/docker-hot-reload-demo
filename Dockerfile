# syntax=docker/dockerfile:1

FROM python:3.13

WORKDIR /python-docker

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

WORKDIR /flask

COPY . .

CMD [ "python3", "-m" , "flask",  "--app=main", "run", "--host=0.0.0.0", "--debug"]
#CMD [ "python3", "-m flask run --debug --host=0.0.0.0 main"]
# CMD [ "python3-m" , "flaskrun--debug--host=0.0.0.0main"]