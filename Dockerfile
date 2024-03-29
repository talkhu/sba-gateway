# Start with a base image containing Java runtime
FROM openjdk:8-jdk-alpine

# Add Maintainer Info
MAINTAINER huqidl <huqidl@cn.ibm.com>

# Set Env
ENV TZ Asia/Shanghai

# The application's jar file
ARG JAR_FILE=target/gateway-0.0.1-SNAPSHOT.jar

# Add the application's jar to the container
ADD ${JAR_FILE} app.jar

# Run the jar file
ENTRYPOINT ["java","-jar","/app.jar"]
