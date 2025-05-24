FROM ubuntu:22.04
RUN apt-get update -y
RUN apt-get install wget build-essential -y
WORKDIR /opt/
RUN wget https://github.com/RavenProject/Ravencoin/releases/download/v4.6.1/raven-4.6.1-7864c39c2-x86_64-linux-gnu.tar.gz
RUN tar zxvf raven-4.6.1-7864c39c2-x86_64-linux-gnu.tar.gz
RUN mv raven-4.6.1-7864c39c2/bin/ravend /usr/bin/
RUN mv raven-4.6.1-7864c39c2/bin/raven-cli /usr/bin/
RUN rm -R raven-4.6.1-7864c39c2
RUN rm raven-4.6.1-7864c39c2-x86_64-linux-gnu.tar.gz
CMD /usr/bin/ravencoind -printtoconsole
