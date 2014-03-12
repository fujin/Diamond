FROM ubuntu:12.04
MAINTAINER AJ Christensen <aj@junglist.io>
RUN apt-get update
RUN apt-get install pbuilder python-mock python-configobj python-support cdbs git-core -y

ADD ./ /diamond
WORKDIR /diamond
CMD make builddeb && cp build/*.deb /packages/