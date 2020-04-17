FROM alpine:3.7
# install
ADD server /server
RUN mv /server/IntelliJIDEALicenseServer_linux_amd64 /server/idea-server
RUN chmod 755 -R /server
CMD /server/idea-server -u xxyl80 -l 0.0.0.0
EXPOSE 1027
