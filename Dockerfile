# TODO: Install opencv 
# FROM rianders/opencv  etc

FROM ubuntu:17.04

RUN apt-get update && apt-get install -y --no-install-recommends \
  ca-certificates curl git vim less \
  build-essential cmake pkg-config caffe-cpu

# option caffe-cuda
# http://caffe.berkeleyvision.org/install_apt.html
# In case we need to turn off ssl verify
# RUN  git config --global http.sslVerify false

WORKDIR src

RUN git clone https://github.com/CMU-Perceptual-Computing-Lab/openpose.git
WORKDir /src/openpose


WORKDIR /src/openpose/build
RUN cmake ..
RUN make
RUN make install





