FROM google/debian:wheezy

MAINTAINER "Daniel Whatmuff" <danielwhatmuff@gmail.com>

ENV OS_CLI_VERSION v1.1.3
ENV OS_TAG cffae05

RUN apt-get update -y && \
    apt-get install --no-install-recommends -y -q curl ca-certificates bash && \
    apt-get -y autoremove && \
    curl -s -L https://github.com/openshift/origin/releases/download/v1.1.3/openshift-origin-server-${OS_CLI_VERSION}-${OS_TAG}-linux-64bit.tar.gz -o /tmp/server.tar.gz && \
    tar zxvf /tmp/server.tar.gz -C /tmp/ && \ 
    mv /tmp/openshift-origin-server-${OS_CLI_VERSION}-${OS_TAG}-linux-64bit/oadm /usr/bin/ && \
    rm -rf /tmp/server.tar.gz /tmp/openshift-origin-server-${OS_CLI_VERSION}-${OS_TAG}-linux-64bit/ && \
    oadm version

CMD ["oadm"]
