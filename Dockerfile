FROM eclipse-temurin:25.0.1_8-jre-alpine@sha256:b51543f89580c1ba70e441cfbc0cfc1635c3c16d2e2d77fec9d890342a3a8687

ENV TZ="UTC"

RUN wget -qO /usr/local/bin/dumb-init https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_x86_64 \
    && chmod +x /usr/local/bin/dumb-init

ENTRYPOINT [ "/usr/local/bin/dumb-init", "--" ]
