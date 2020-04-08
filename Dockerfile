FROM debian:bullseye-slim

RUN apt-get update && apt-get install -y curl awscli vim git


RUN curl -LO https://storage.googleapis.com/kubernetes-release/release/v1.14.10/bin/linux/amd64/kubectl && \
    chmod +x ./kubectl && \
    mv ./kubectl /usr/local/bin/kubectl && \
    kubectl version --client

RUN curl -LO https://github.com/fluxcd/flux/releases/download/1.18.0/fluxctl_linux_amd64 && \
    chmod +x fluxctl_linux_amd64 && \
    mv fluxctl_linux_amd64 /usr/local/bin/fluxctl && \
    fluxctl version

# RUN curl -LO https://get.helm.sh/helm-v3.1.1-linux-amd64.tar.gz && \
#     mv linux-amd64/helm /usr/local/bin/helm && \
#     rm -rv linux-amd64 && \
#     helm version