FROM openjdk:17.0.1-slim

# Set image information, but could be set to different location from command line
ARG IMAGE_VERSION="0.0.1-SNAPSHOT"
ARG IMAGE_NAME="Config Service"
ARG MAINTAINER="Hristijan Dimitrieski <hristijan.dimitrieski@gmail.com>"

LABEL version=${IMAGE_VERSION} name=${IMAGE_NAME} maintainer=${MAINTAINER}

ADD ./target/catalog.jar catalog.jar

# Expose the service to port 8080
EXPOSE 8888

# Run the application
ENTRYPOINT ["java", "-jar", "/catalog.jar"]