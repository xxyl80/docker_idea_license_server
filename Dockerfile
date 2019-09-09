FROM alpine:3.7

MAINTAINER sweet <sweet123951@gmail.com>

ENV USER_NAME=sweet
ENV BIND_ADDR=0.0.0.0
RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && echo 'Asia/Shanghai' >/etc/timezone

# install
ADD server /server

RUN /server/kms-server

CMD /server/IntelliJIDEALicenseServer_linux_amd64 -u ${USER_NAME} -l ${BIND_ADDR}

EXPOSE 1027
