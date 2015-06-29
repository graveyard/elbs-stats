FROM python:2.7
ENTRYPOINT ["/usr/bin/start.sh"]

COPY ./diamond.conf.template /usr/bin/diamond.conf.template
COPY ./start.sh /usr/bin/start.sh
RUN pip install diamond \
    && pip install boto \
    && pip install influxdb==v0.4.1
