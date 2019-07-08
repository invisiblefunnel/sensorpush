FROM bash:5.0.7
ENV TZ=UTC
RUN apk add curl jq
RUN curl -O https://raw.githubusercontent.com/rockymadden/slack-cli/46d22741e82d749180ae91512515132a9380ad57/src/slack \
    && chmod a+x slack
COPY sensorpush sensorpush
ENTRYPOINT [ "bash" ]
