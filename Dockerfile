FROM alpine
RUN apk add --no-cache openjdk8
RUN mkdir -p /app/
WORKDIR /app/
COPY ProblemsStore /app/ProblemsStore
COPY build/libs/jalgoarena-*.jar /app/jalgoarena.jar
ENTRYPOINT java -jar /app/jalgoarena.jar
