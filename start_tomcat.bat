set JAVA_HOME=.\java
set CATALINA_HOME=.\tomcat

set CLASSPATH=%CATALINA_HOME%\bin\bootstrap.jar;%CATALINA_HOME%\bin\tomcat-juli.jar;%CATALINA_HOME%\log4j2\lib\*;%CATALINA_HOME%\log4j2\conf\*
set Path=%Path%;%CATALINA_HOME%\bin

set JAVA_OPTS=%JAVA_OPTS% -Djava.util.logging.manager=org.apache.logging.log4j.jul.LogManager
set JAVA_OPTS=%JAVA_OPTS% -Dlog4j.configurationFile=%CATALINA_HOME%\log4j2\conf\log4j2-tomcat.xml
set JAVA_OPTS=%JAVA_OPTS% -Dfile.encoding=UTF8
set JAVA_OPTS=%JAVA_OPTS% -Dcatalina.base=%CATALINA_HOME%
set JAVA_OPTS=%JAVA_OPTS% -Dcatalina.home=%CATALINA_HOME%
set JAVA_OPTS=%JAVA_OPTS% -Djava.io.tmpdir=%CATALINA_HOME%\temp

%JAVA_HOME%\bin\java -Xms128m -Xmx512m %JAVA_OPTS% org.apache.catalina.startup.Bootstrap start
pause
