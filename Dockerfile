FROM openjdk:8-jdk-alpine
VOLUME /tmp
EXPOSE 8088
ADD target/registerservice.jar registerservice.jar
ENTRYPOINT [ "java","-jar","/registerservice.jar" ]