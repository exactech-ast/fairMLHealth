FROM python:3.9-bookworm

RUN apt-get update && apt-get install -y libgomp1
RUN apt-get install -y libgomp1 gcc g++

WORKDIR /dev
COPY . .

# Call script that sets up and runs test environment
RUN /bin/bash build_test.sh

# create artifacts folder for built package.
RUN mkdir /artifacts
RUN python3 setup.py bdist_wheel --dist-dir /artifacts
