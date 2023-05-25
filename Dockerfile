FROM openjdk:8-jdk-alpine
VOLUME /tmp
EXPOSE 8088
ADD target/register-service.jar register-service.jar
ENTRYPOINT [ "java","-jar","/register-service.jar" ]