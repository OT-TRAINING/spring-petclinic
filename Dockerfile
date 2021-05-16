FROM ubuntu:18.04 as builder
RUN apt-get update; \
    apt-get install openjdk-8-jdk -y
RUN mkdir /home/maven
COPY . /home/maven/
WORKDIR /home/maven/
RUN ./mvnw package
CMD ["java", "-jar", "target/*.jar"]
