FROM java:8-jre
MAINTAINER antono@clemble.com

EXPOSE 10007

ADD ./buildoutput/goal-suggestion.jar /data/goal-suggestion.jar

CMD java -jar -Dspring.profiles.active=cloud -Dserver.port=10007 -Dlogging.config=classpath:logback.cloud.xml /data/goal-suggestion.jar
