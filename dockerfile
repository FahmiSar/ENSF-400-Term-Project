# use the gradle with jdk 11 image as the base
FROM gradle:7.6.1-jdk11

# this sets the working directory in the container
WORKDIR /app

# These copy the necessary files into the working directory of container for the build process
COPY gradlew gradlew.bat gradle.properties build.gradle /app/

# copy the entire gradle folder into src
COPY gradle /app/gradle

# copy the application source code
COPY src /app/src

# Give execution permission to gradle wrapper
RUN chmod +x /app/gradlew

# this tells docker that the container listens on port 8080
EXPOSE 8080

# start application 
CMD ["./gradlew", "appRun", "--continuous"]


