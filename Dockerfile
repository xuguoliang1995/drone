FROM ubuntu:16.04

RUN apt-get update -y && \
    apt-get install -y python-pip python-dev
RUN mkdir /drone
WORKDIR /drone
ADD . /drone
RUN pip install -r requirements.txt
EXPOSE 5000:5000
CMD [ "python","app.py" ]


















