FROM java:8-jre
MAINTAINER antono@clemble.com

EXPOSE 8080

ADD target/goal-suggestion-0.17.0-SNAPSHOT.jar /data/goal-suggestion.jar

CMD java -jar -Dspring.profiles.active=cloud /data/goal-suggestion.jar
