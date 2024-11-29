ARG BUILD_FROM
FROM $BUILD_FROM

RUN \
    apt-get update \
    \
    && apt-get install -y --no-install-recommends \
        curl jq\
    \
    && curl -J -L -o /tmp/bashio.tar.gz \
        "https://codeload.github.com/hassio-addons/bashio/tar.gz/refs/tags/v0.16.2" \
    && mkdir /tmp/bashio \
    && tar zxvf \
        /tmp/bashio.tar.gz \
        --strip 1 -C /tmp/bashio \
    \
    && mv /tmp/bashio/lib /usr/lib/bashio \
    && ln -s /usr/lib/bashio/bashio /usr/bin/bashio \
    && apt-get clean \
    && rm -fr \
        /tmp/* \
        /var/{cache,log}/* \
        /var/lib/apt/lists/*


COPY run.sh /
RUN chmod a+x /run.sh

CMD [ "/run.sh" ]

