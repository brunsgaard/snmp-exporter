FROM ubuntu
RUN apt-get -y update
RUN apt-get install -y python-pip
RUN apt-get install -y python-netsnmp
RUN pip install snmp_exporter
RUN mkdir /snmp-exporter
VOLUME /snmp-exporter
EXPOSE 9116
ENTRYPOINT ["snmp_exporter", "/snmp-exporter/snmp.yml"]
