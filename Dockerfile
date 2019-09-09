FROM alpine:3.7
# install
ADD server /server
ADD run-server /server/run-server
RUN mvn IntelliJIDEALicenseServer_linux_amd64 idea-server

CMD /server/idea-server

EXPOSE 1027
EXPOSE 1688
