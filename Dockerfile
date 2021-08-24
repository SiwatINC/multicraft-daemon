FROM ghcr.io/siwatinc/java-baseimage:openjdk15
RUN wget https://www.multicraft.org/download/linux64 && tar -xvzf ./linux64 && rm ./linux64 && rm -rv ./multicraft/panel / && mv -v ./multicraft /installer
COPY ./initialize.sh /initialize.sh
RUN chmod +x /initialize.sh && /initialize.sh
