ARG FROM_IMAGE=baserow/baserow:1.35.1
FROM $FROM_IMAGE AS image_base

# Set data directory
ENV DATA_DIR=/baserow/data
RUN mkdir -p "$DATA_DIR" && chown -R 9999:9999 "$DATA_DIR"

# Expose port 80 for Render
EXPOSE 80

# Start Baserow web server
ENTRYPOINT []
CMD ["baserow", "web"]
