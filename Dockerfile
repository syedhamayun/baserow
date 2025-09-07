# Base image (version pinned)
ARG FROM_IMAGE=baserow/baserow:1.35.1
FROM $FROM_IMAGE AS image_base

# Remove unnecessary packages
RUN apt-get remove -y "postgresql-$POSTGRES_VERSION" redis-server || true

# Set data directory
ENV DATA_DIR=/baserow/data
RUN mkdir -p "$DATA_DIR" && chown -R 9999:9999 "$DATA_DIR"

# Expose port 80 for Render
EXPOSE 80

# Run Baserow web server
ENTRYPOINT []
CMD ["baserow", "web"]
