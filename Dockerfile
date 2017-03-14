from debian:jessie

RUN apt-get update && apt-get install -y build-essential

ADD test.cc /opt/
RUN g++ /opt/test.cc -o /opt/test

ENTRYPOINT ["/bin/sh"]
