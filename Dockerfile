# Inherit from official Salus image.
FROM coinbase/salus:latest

# Add custom scanners to the Salus application.
#COPY scanners/* /home/lib/salus/scanners/

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

# Build-time metadata as defined at http://label-schema.org
ARG BUILD_DATE
ARG VCS_REF
ARG VERSION
LABEL org.label-schema.build-date=$BUILD_DATE \
      org.label-schema.name="ContainerShark" \
      org.label-schema.description="ContainerShark Hypervisor" \
      org.label-schema.url="https://schemas.contractshark.com/" \
      org.label-schema.vcs-ref=$VCS_REF \
      org.label-schema.vcs-url="https://github.com/contractshark/gh-salus.git" \
      org.label-schema.vendor="ContainerShark" \
      org.label-schema.version=$VERSION \
      org.label-schema.schema-version="1.0"
