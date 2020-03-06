FROM alpine:3.7
# install
ADD server /server
ADD run-server /server/run-server
RUN mv /server/IntelliJIDEALicenseServer_linux_amd64 /server/idea-server
RUN chmod 755 /server/run-server
CMD sh /server/run-server
EXPOSE 1027
EXPOSE 1688
