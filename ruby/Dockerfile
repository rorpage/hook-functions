FROM ruby:alpine

RUN apk --no-cache add curl \
    && echo "Pulling watchdog binary from Github." \
    && curl -sSL https://github.com/openfaas/faas/releases/download/0.6.9/fwatchdog > /usr/bin/fwatchdog \
    && chmod +x /usr/bin/fwatchdog

ENV cgi_headers true
ENV fprocess "sh script.sh"

COPY ../script.sh .
RUN chmod a+x script.sh

CMD ["fwatchdog"]
