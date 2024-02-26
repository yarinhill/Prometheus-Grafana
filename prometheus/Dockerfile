FROM ubuntu/prometheus:latest
  
USER root

RUN \
    apt-get update && \
    apt-get install -y docker net-tools vim ssh curl

#COPY ./run.sh /root/run.sh
#COPY ./id_rsa_jumpers /root/.ssh/id_rsa_jumpers

#RUN chmod 700 /root/run.sh && \
#    chmod 600 /root/.ssh/id_rsa_jumpers

