FROM debian:bullseye-slim

RUN apt-get update && apt-get install -y curl awscli vim


RUN curl -LO https://storage.googleapis.com/kubernetes-release/release/v1.14.10/bin/linux/amd64/kubectl && \
    chmod +x ./kubectl && \
    mv ./kubectl /usr/local/bin/kubectl && \
    kubectl version --client
