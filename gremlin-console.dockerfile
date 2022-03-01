FROM clojure
MAINTAINER @jicksta
run apt-get update
run apt-get install wget apt-utils unzip
RUN wget -nv -O /tmp/gremlin-console.zip https://archive.apache.org/dist/tinkerpop/3.2.6/apache-tinkerpop-gremlin-console-3.2.6-bin.zip
RUN unzip /tmp/gremlin-console.zip -d / && \
         rm /tmp/gremlin-console.zip && \
         mv /apache-tinkerpop-gremlin-console-3.2.6 /gremlin-console
ENTRYPOINT /gremlin-console/bin/gremlin.sh
WORKDIR /gremlin-console
