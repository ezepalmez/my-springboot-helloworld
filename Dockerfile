# Start with a base image containing Java runtime
FROM openjdk:8-jre-alpine
# Add Maintainer Info
MAINTAINER "ezpalmez@gmail.com"

COPY target/helloworld.jar /usr/app/

WORKDIR /usr/app
# Run the jar file 
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","helloworld.jar"]
