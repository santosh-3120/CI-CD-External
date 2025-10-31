FROM openjdk:11

WORKDIR ./app

COPY . .

RUN javac Hello.java

CMD ["java","Hello"]