FROM openjdk:8u151-jdk-alpine3.7

EXPOSE 8090

ENV APP_HOME /usr/src/app

ADD https://pro.jfrog.io/pro/list/maven-gitlabci-local/com/reljicd/blog-demo/0.0.1-SNAPSHOT/blog-demo-0.0.1-SNAPSHOT.jar $APP_HOME/app.jar

WORKDIR $APP_HOME

ENTRYPOINT exec java -jar app.jar
