FROM public.ecr.aws/docker/library/openjdk:22-ea-17-slim-bookworm
RUN mkdir -p /tmp/logs && chmod 777 /tmp/logs
COPY ./target/*.jar /home/app.jar
CMD ["java","-jar","/home/app.jar"]
