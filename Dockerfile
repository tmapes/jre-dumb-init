FROM eclipse-temurin:21.0.5_11-jre-alpine@sha256:41502ff7105c996a588c68647da859759b5fc457bca6f4bf3edbc59e3b75423c

ENV TZ="UTC"

RUN wget -qO /usr/local/bin/dumb-init https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_x86_64 \
    && chmod +x /usr/local/bin/dumb-init

ENTRYPOINT [ "/usr/local/bin/dumb-init", "--" ]
