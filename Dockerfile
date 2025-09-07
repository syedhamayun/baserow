ARG FROM_IMAGE=baserow/baserow:1.35.1
FROM $FROM_IMAGE AS image_base

# Ignore errors while removing unnecessary packages
RUN apt-get remove -y "postgresql-$POSTGRES_VERSION" redis-server || true

ENV DATA_DIR=/baserow/data
RUN mkdir -p "$DATA_DIR" && chown -R 9999:9999 "$DATA_DIR"

EXPOSE 80

ENTRYPOINT []
CMD ["baserow", "web"]
