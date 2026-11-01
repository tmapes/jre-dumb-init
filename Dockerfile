FROM eclipse-temurin:25.0.5_8-jre-alpine@sha256:56f273059de6b13a6b49fe0ded691ed2d0399bbee76156a8f2d385f7524a3d43

ENV TZ="UTC"

RUN wget -qO /usr/local/bin/dumb-init https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_x86_64 \
    && chmod +x /usr/local/bin/dumb-init

ENTRYPOINT [ "/usr/local/bin/dumb-init", "--" ]
