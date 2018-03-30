FROM gomoob/jenkins-jnlp-slave-php:1.0.0

MAINTAINER Pascal Noisette <netpascal0123@aol.com>

USER root

RUN apt-get install -y ca-certificates && wget https://pki.smile.fr/smile.crt -O /usr/local/share/ca-certificates/smile.crt && wget https://pki.smile.fr/smile2016.crt -O /usr/local/share/ca-certificates/smile2016.crt && update-ca-certificates

USER jenkins

VOLUME /home/jenkins/.composer
