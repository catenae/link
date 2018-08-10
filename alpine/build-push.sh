#!/bin/bash
docker build \
--build-arg CATENAE_VERSION=$(cat CATENAE_VERSION) \
--build-arg LIBRDKAFKA_VERSION=$(cat LIBRDKAFKA_VERSION) \
--build-arg CONFLUENT_KAFKA_VERSION=$(cat CONFLUENT_KAFKA_VERSION) \
-t catenae/link:alpine .
docker push catenae/link:alpine
