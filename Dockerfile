FROM eclipse-temurin:21.0.5_11-jre-alpine@sha256:94827466ed00df9dbd09b29f4bd0ff37c55cb4fb26ddcc8b0af88bd2f5d1d218

ENV TZ="UTC"

RUN wget -qO /usr/local/bin/dumb-init https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_x86_64 \
    && chmod +x /usr/local/bin/dumb-init

ENTRYPOINT [ "/usr/local/bin/dumb-init", "--" ]
