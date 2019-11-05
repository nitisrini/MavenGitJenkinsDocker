FROM maven:3.6.2-jdk-8-slim

WORKDIR /usr

ADD ./src /usr/src
ADD ./pom.xml /usr/pom.xml
ADD ./testng.xml /usr/testng.xml

RUN mvn install

CMD ["sh", "-c", "mvn test"]