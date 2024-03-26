FROM amazoncorretto:8

EXPOSE 8080

RUN yum install -y git &&\
git clone https://github.com/docker-hy/material-applications.git &&\
cd material-applications/spring-example-project &&\
./mvnw package

WORKDIR /material-applications/spring-example-project

CMD ["java", "-jar", "./target/docker-example-1.1.3.jar"]
