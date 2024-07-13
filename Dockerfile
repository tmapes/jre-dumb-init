FROM docker.mapes.info/eclipse-temurin:21.0.3_9-jre-alpine@sha256:f05c742dd20051b104b939370f7db4d6eb420cc7fd842aeb4e2446837da3bd03

ENV TZ="UTC"

RUN wget -qO /usr/local/bin/dumb-init https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_x86_64 \
    && chmod +x /usr/local/bin/dumb-init

ENTRYPOINT [ "/usr/local/bin/dumb-init", "--" ]
