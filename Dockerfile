FROM python:3.8-alpine

ARG ANSIBLE_VERSION

# Install build dependenties
RUN apk --update add --no-cache --virtual .build-deps \
    libffi-dev \
    openssl-dev \
    build-base \
&& apk --update add --no-cache \
    git \
    openssh-client \
    unzip \
    tar \
    iptables \
    curl \
    bash \
    sshpass \
    rust \
    cargo \
# Upgrade pip3
&& pip3 install --upgrade \
    pip \
    # Install netaddr for Consul role
    netaddr \
    six \
# Install Ansible
&& pip3 install \
    ansible==${ANSIBLE_VERSION} \
# Remove build dependenties
&& apk del \
    .build-deps
