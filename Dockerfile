FROM ubuntu:20.04

RUN apt-get update && \
  apt-get install -y \
    curl \
    build-essential \
    make \
    g++ && \
  rm -rf /var/lib/apt/lists/*

RUN curl https://cs.sandia.gov/~sjplimp/tars/spparks.tar.gz \
  -o /spparks.tar.gz

RUN tar -zxf /spparks.tar.gz

RUN cd /spparks-*/src && \
    make serial && \
    mv ./spk_serial /usr/local/bin/spk_serial && \
    cd / && \
    rm -rf /spparks*

ENTRYPOINT ["/usr/local/bin/spk_serial", "-in"]
CMD ["-help"]
