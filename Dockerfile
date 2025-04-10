# Use OpenJDK base image
FROM eclipse-temurin:17-jdk

# Set working directory inside the container
WORKDIR /app

# Copy Java source files
COPY . .

# Compile Java files
RUN javac Main.java

# Set the entrypoint to run the compiled class
CMD ["java", "Main"]
