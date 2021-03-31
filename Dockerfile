FROM ubuntu:20.04

RUN apt-get update && \
  apt-get install -y \
    curl \
    build-essential \
    make \
    g++ && \
  rm -rf /var/lib/apt/lists/*

COPY spparks.tar.gz /spparks.tar.gz

RUN tar -zxf /spparks.tar.gz

COPY PATCH/solve_linear.cpp PATCH/app_chemistry.cpp /spparks-24Jul20/src

RUN cd /spparks-*/src && \
    make serial && \
    mv ./spk_serial /usr/local/bin/spk_serial && \
    cd / && \
    rm -rf /spparks*

ENTRYPOINT ["/usr/local/bin/spk_serial", "-in"]
CMD ["-help"]
