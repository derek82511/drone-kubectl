FROM bitnami/kubectl:1.16.3

LABEL maintainer "Derek Chang <derek82511@gmail.com>"

COPY init-kubectl kubectl /opt/drone/kubectl/bin/

USER root

ENV PATH="/opt/drone/kubectl/bin:$PATH"

ENTRYPOINT ["kubectl"]

CMD ["--help"]
