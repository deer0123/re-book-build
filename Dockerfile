 # 1단계: Spring Boot JAR 파일 복사 및 실행 준비
FROM openjdk:17-jdk-slim

WORKDIR /app

# JAR 파일 복사
COPY build/libs/re_book_build-0.0.1-SNAPSHOT.jar /app/re_book.jar

# 환경 변수 설정
ENV JAVA_HOME=/usr/local/openjdk-17
ENV PATH=$JAVA_HOME/bin:$PATH

# Spring Boot 실행
CMD ["/usr/local/openjdk-17/bin/java", "-jar", "/app/re_book.jar"]