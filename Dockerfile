FROM docker.mapes.info/eclipse-temurin:21.0.3_9-jre-alpine@sha256:f28691b4af71a91e60320257eae571c636151b89a85f222c9ba6a9685fea587f

ENV TZ="UTC"

RUN wget -qO /usr/local/bin/dumb-init https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_x86_64 \
    && chmod +x /usr/local/bin/dumb-init

ENTRYPOINT [ "/usr/local/bin/dumb-init", "--" ]
