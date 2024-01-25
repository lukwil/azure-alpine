FROM alpine:3.19

COPY sshd_config /etc/ssh/
COPY entrypoint.sh ./

# Start and enable SSH
RUN apk add openssh \
    && apk add lighttpd \
    && apk add openrc --no-cache \
    && echo "root:Docker!" | chpasswd \
    && chmod +x ./entrypoint.sh \
    && cd /etc/ssh/ \
    && ssh-keygen -A

EXPOSE 80 2222

ENTRYPOINT [ "./entrypoint.sh" ]
