FROM espressif/idf:release-v4.4

RUN apt update && apt install -y --no-install-recommends \ 
                             vim 

RUN echo "source /opt/esp/idf/export.sh" >> /root/.bashrc

CMD [ "tail", "-f", "/dev/null"]




