FROM openjdk:8-jre-alpine
LABEL maintainer="ezepalmez@gmail.com"

ENV APP_ROOT /app

RUN mkdir ${APP_ROOT}

WORKDIR ${APP_ROOT}

COPY target/*.jar ${APP_ROOT}/helloworld.jar
COPY config ${APP_ROOT}/config/

ENTRYPOINT ["java", "-jar", "helloworld.jar"]