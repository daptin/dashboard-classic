FROM daptin/daptin:travis

RUN mkdir -p /opt/daptin/storage/documents
ADD dist /opt/daptin/dashboard
ENV DAPTIN_DASHBOARD /opt/daptin/dashboard
ENV DAPTIN_PORT 8080


CMD /opt/daptin/daptin --dashboard /opt/daptin/dashboard
