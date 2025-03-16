# use the gradle with jdk 11 image as the base
FROM gradle:7.6.1-jdk11

# this sets the working directory in the container
WORKDIR /app

# copy literally every file into container
COPY . .

# Give execution permission to gradle wrapper
RUN chmod +x /app/gradlew

# this tells docker that the container listens on port 8080
EXPOSE 8080

# start application 
CMD ["./gradlew", "apprun", "--continuous"]