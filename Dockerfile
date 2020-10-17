FROM alpine:3.12.0 AS debug
RUN apk update && apk upgrade
RUN apk add coreutils \
	build-base \
	cmake \
	curl-dev \
	rsync \
	openrc \
	openssh \
	gdb \
	rsync \
	tar
RUN rc-update add sshd \
	&& rc-status \
	&& touch /run/openrc/softlevel \
	&& echo "PermitEmptyPasswords yes" >> /etc/ssh/sshd_config \
	&& adduser debug --disabled-password \
	&& echo 'debug:password' | chpasswd -c NONE
RUN ( \
    echo 'LogLevel DEBUG2'; \
    echo 'PermitRootLogin yes'; \
    echo 'PasswordAuthentication yes'; \
    echo 'Subsystem sftp /usr/lib/ssh/sftp-server'; \
  ) > /etc/ssh/sshd_config_test_clion \
  && mkdir /run/sshd
RUN cd /etc/ssh && ssh-keygen -A
CMD ["/usr/sbin/sshd", "-D", "-e", "-f", "/etc/ssh/sshd_config_test_clion"]

FROM alpine:3.12.0 AS deploy
RUN apk update && apk upgrade
RUN apk add coreutils \
	build-base \
	gdb \
	cmake \
	curl-dev
RUN mkdir app
COPY external/json-develop app/external/json-develop
COPY include app/include
COPY src app/src
COPY CMakeLists.txt app/
RUN cd app && cmake . && make
ENTRYPOINT ["./app/NDegreesOfWikipedia"]