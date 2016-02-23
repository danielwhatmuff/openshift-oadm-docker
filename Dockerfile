FROM danielwhatmuff/alpine-glibc-docker

MAINTAINER "Daniel Whatmuff" <danielwhatmuff@gmail.com>

ENV OS_CLI_VERSION v1.1.3
ENV OS_TAG cffae05

RUN apk-install curl ca-certificates && \
    rm -rf /root/.cache /var/cache/apk/ && \
    curl -s -L https://github.com/openshift/origin/releases/download/v1.1.3/openshift-origin-server-${OS_CLI_VERSION}-${OS_TAG}-linux-64bit.tar.gz -o /tmp/server.tar.gz && \
    tar zxvf /tmp/server.tar.gz -C /tmp/ && \ 
    mv /tmp/openshift-origin-server-${OS_CLI_VERSION}-${OS_TAG}-linux-64bit/oadm /usr/bin/ && \
    rm -rf /tmp/server.tar.gz /tmp/openshift-origin-server-${OS_CLI_VERSION}-${OS_TAG}-linux-64bit/ && \
    oadm version

CMD ["oadm"]
