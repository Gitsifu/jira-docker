# 若网络慢，可尝试使用以下镜像源
#FROM docker.1panel.dev/cptactionhank/atlassian-jira-software:latest
#FROM hub.atomgit.com/cptactionhank/atlassian-jira-software:latest

FROM cptactionhank/atlassian-jira-software:latest

USER root

# 将代理破解包加入容器
COPY "atlassian-agent.jar" /opt/atlassian/jira/

# 设置启动加载代理包
RUN echo 'export CATALINA_OPTS="-javaagent:/opt/atlassian/jira/atlassian-agent.jar ${CATALINA_OPTS}"' >> /opt/atlassian/jira/bin/setenv.sh
