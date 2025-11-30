# Base image: JDK 21 để chạy ứng dụng Java
FROM eclipse-temurin:21-jre

# Copy file JAR đã build sẵn từ Maven (sẽ nằm trong /target)
COPY target/*.jar app.jar

# Cổng dịch vụ mà ứng dụng sử dụng
EXPOSE 8080

# Command chạy khi container khởi động
ENTRYPOINT ["java","-jar","/app.jar"]
