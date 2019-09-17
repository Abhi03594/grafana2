FROM ubuntu:latest
#FROM golang:1.10.3

RUN apt-get update \
    && apt-get install -y --no-install-recommends gettext

ADD chart/grafana /tmp/chart
RUN cd /tmp && tar -czvf /tmp/grafana.tar.gz chart

#ADD schema.yaml /tmp/schema.yaml

ARG REGISTRY
ARG TAG

#RUN cat /tmp/schema.yaml \
 #   | env -i "REGISTRY=$REGISTRY" "TAG=$TAG" envsubst \
 #   > /tmp/schema.yaml.new \
  #  && mv /tmp/schema.yaml.new /tmp/schema.yaml


EXPOSE 3000

