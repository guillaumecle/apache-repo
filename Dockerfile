FROM maven

RUN mkdir /extra-project
WORKDIR /extra-project
COPY extra-project/pom.xml .
RUN mvn clean install

RUN mkdir /main-project
WORKDIR /main-project
COPY main-project/pom.xml .
RUN mvn clean install
