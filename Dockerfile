FROM ubuntu:18.04

RUN apt-get update
RUN apt-get -y upgrade
RUN apt-get install -y software-properties-common
RUN add-apt-repository ppa:ubuntugis/ubuntugis-unstable
RUN apt-get update

RUN apt-get -y install python-setuptools
RUN apt-get -y install python-dev
RUN apt-get -y install libpq-dev
RUN apt-get -y install python-pip
RUN apt-get -y install libpython2.7 libpython2.7-dev

RUN apt-get -y install libxml2
RUN apt-get -y install libxslt1.1
RUN apt-get -y install python-lxml

RUN apt-get -y install gdal-bin
RUN apt-get -y install python-gdal

RUN apt-get -y install postgresql-client

RUN pip install psycopg2
RUN apt-get install -y python-argparse
