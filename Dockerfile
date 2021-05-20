
#FROM  maven:3.6-openjdk-8
#USER root
#WORKDIR /gateway-service
#COPY . .
#RUN mvn package
#
#FROM openjdk:8-jdk-alpine
#WORKDIR /gateway-service
#ARG JAR_FILE=/gateway-service/target/*.jar
#COPY --from=0 ${JAR_FILE} gateway.jar
#ENTRYPOINT ["java","-jar","gateway.jar"]

FROM openjdk:8-jdk-alpine
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} gateway.jar
ENTRYPOINT ["java","-jar","/gateway.jar"]