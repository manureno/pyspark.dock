# syntax=docker/dockerfile:1

# bullseye is the latest Debian to date ie version 11
# Python 3.10 is available form both python:3.10-slim-bullseye and python:3.10-bullseye
FROM python:3.10-slim-bullseye

#
# Install Java
#
ENV DEBIAN_FRONTEND=noninteractive

RUN mkdir -p /usr/share/man/man1 /usr/share/man/man2

RUN apt-get update && \
apt-get install -y --no-install-recommends \
        openjdk-11-jre

# Upgrade pip
RUN pip install --upgrade pip

# Install pyspark
RUN pip install pyspark==3.2.1

# Start the application making it visible with --host option
# CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]

