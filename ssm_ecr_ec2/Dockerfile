# ssm_ecr_ec2/Dockerfile
#
# Just to show that the Dockerfile could be different on each pipeline
# but il could also be the same that ssh_dockerhub_ec2/Dockerfile
#
FROM public.ecr.aws/amazoncorretto/amazoncorretto:17-alpine

RUN apk add --no-cache wget

EXPOSE 3080

COPY ./target/java-maven-app-*.jar /usr/app/

WORKDIR /usr/app

HEALTHCHECK --interval=30s --timeout=3s --retries=3 \
  CMD wget -q --spider http://localhost:3080/ || exit 1

CMD ["java", "-jar", "java-maven-app-1.0.jar"]
