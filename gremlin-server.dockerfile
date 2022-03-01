FROM clojure
MAINTAINER @jicksta
run apt-get update
run apt-get install wget apt-utils unzip
RUN wget -nv -O /tmp/gremlin-server.zip https://archive.apache.org/dist/tinkerpop/3.2.6/apache-tinkerpop-gremlin-server-3.2.6-bin.zip 
RUN unzip /tmp/gremlin-server.zip -d / && \
         rm /tmp/gremlin-server.zip && \
         mv /apache-tinkerpop-gremlin-server-3.2.6 /gremlin-server
ENTRYPOINT /gremlin-server/bin/gremlin-server.sh
WORKDIR /gremlin-server
EXPOSE 8182
