# ssh_dockerhub_ec2/Dockerfile
#
FROM amazoncorretto:17-alpine-jdk

EXPOSE 3080

COPY ./target/java-maven-app-*.jar /usr/app/

WORKDIR /usr/app

CMD ["java", "-jar", "java-maven-app-1.0.jar"]
