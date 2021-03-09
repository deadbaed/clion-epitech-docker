FROM epitechcontent/epitest-docker

RUN dnf install -y passwd openssh-server rsync

RUN useradd -m user && yes password | passwd user

RUN ssh-keygen -A

EXPOSE 22

CMD ["sshd","-D"]
