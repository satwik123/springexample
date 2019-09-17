FROM openjdk:11-jdk
#VOLUME /tmp
ADD target/SpringExample-2.0.3-SNAPSHOT.jar app.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]
