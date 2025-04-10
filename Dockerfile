FROM eclipse-temurin:17-jdk-alpine
    
EXPOSE 8080
 
ENV APP_HOME /usr/src/app

COPY target/*.jar $APP_HOME/

WORKDIR $APP_HOME

CMD ["java", "-jar", "bloggingapp-0.0.${BUILD_NUMBER}.jar"]

