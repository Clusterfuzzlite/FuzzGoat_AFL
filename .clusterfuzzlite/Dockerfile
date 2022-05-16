FROM gcr.io/oss-fuzz-base/base-builder
RUN apt-get update && apt-get install -y make autoconf automake libtool

COPY . $SRC/FuzzGoat_AFL
WORKDIR FuzzGoat_AFL
COPY .clusterfuzzlite/build.sh $SRC/

