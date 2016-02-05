FROM hypriot/rpi-python
#FROM hypriot/rpi-alpine-scratch

#RUN apk update && \
#apk upgrade && \
#apk add bash && \
#rm -rf /var/cache/apk/*

ADD http://youtube-dl.org/latest/youtube-dl /
RUN chmod +x /youtube-dl && mkdir -p /data
VOLUME /data
WORKDIR /data
ENTRYPOINT ["/youtube-dl"]

