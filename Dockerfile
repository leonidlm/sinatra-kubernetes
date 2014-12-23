FROM dockerfile/ruby

RUN mkdir /app && \
    chmod 755 /app && \
    apt-get update && \
    apt-get install -y libpq-dev

ADD . /app

RUN cd /app && \
    bundle install && \
    chmod +x /app/scripts/run

ENTRYPOINT ["/app/scripts/run"]
