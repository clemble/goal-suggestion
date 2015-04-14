FROM java:8-jre
MAINTAINER antono@clemble.com

EXPOSE 10007

ADD target/goal-suggestion-*-SNAPSHOT.jar /data/goal-suggestion.jar

CMD java -jar -Dspring.profiles.active=cloud -Dserver.port=10007 /data/goal-suggestion.jar
