FROM ubuntu:16.04
RUN apt-get update && apt-get install -y python python-pip
COPY app.py /opt/
COPY ./requirements.txt /var/www/requirements.txt
RUN pip install -r /var/www/requirements.txt
ENTRYPOINT FLASK_APP=/opt/app.py flask run --host=0.0.0.0