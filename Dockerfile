from debian:jessie

RUN apt-get update && apt-get install -y build-essential

ADD test.cc time.c /opt/
RUN g++ /opt/test.cc -o /opt/test
RUN gcc -O2 /opt/time.c -o /opt/time

ENTRYPOINT ["/bin/sh"]
