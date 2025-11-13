#FROM amazoncorretto:17
#COPY ./target/classes/com /tmp/com
#WORKDIR /tmp
#ENTRYPOINT ["java", "com.napier.sem.App"]



FROM amazoncorretto:17
#COPY ./target/devops-0.1.0.1-jar-with-dependencies.jar /tmp
COPY ./target/classes/com /tmp/com
COPY ./target/seMethods-0.1.0.2-jar-with-dependencies.jar /tmp
WORKDIR /tmp
#ENTRYPOINT ["java", "-jar", "devops-0.1.0.1-jar-with-dependencies.jar"]
ENTRYPOINT ["java", "-jar", "seMethods-0.1.0.2-jar-with-dependencies.jar"]
