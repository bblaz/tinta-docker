FROM tryton/tryton:6.4-office

LABEL maintainer="AKLARO <info@aklaro.si>" \
    org.label-schema.name="AKLARO HR web - Trytond" \
    org.label-schema.url="https://www.aklaro.si/" \
    org.label-schema.vendor="AKLARO, Blaž Bregar s.p." \
    org.label-schema.version="6.4" \
    org.label-schema.schema-version="1.0"

USER root
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        git \
    && rm -rf /var/lib/apt/lists/*
RUN pip3 install git+https://github.com/bblaz/tinta@4.6

COPY initialize.sh /

USER trytond
