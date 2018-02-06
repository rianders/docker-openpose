FROM ubuntu:16.04


RUN apt-get update && apt-get install -y --no-install-recommends \
  ca-certificates curl git

# In case we need to turn off ssl verify
# RUN  git config --global http.sslVerify false

WORKDIR src

RUN git clone https://github.com/CMU-Perceptual-Computing-Lab/openpose.git
WORKDir /src/openpose




