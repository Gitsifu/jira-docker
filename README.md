# JIRA Docker镜像构建脚本

## 1、构建镜像
```shell
docker build -t jira:latest .
```

## 2、启动容器
```shell
docker run -d -p 8080:8080 jira:latest
```

## 3、浏览器界面进行设置
浏览器访问：http://IP:8080

## 4、生成许可证

在 `atlassian-agent.jar` 的目录下执行
```shell
java -jar atlassian-agent.jar -d -m xxx@qq.com -n jira-software -p jira -o http://你的IP:8080 -s XXXX-XXXX-XXXX-XXXX
```

- 可通过 `java -jar atlassian-agent.jar` 查看参数说明

-----
## 注意

- 目前Docker Hub上的 `cptactionhank/atlassian-jira-software` 镜像版本为 `8.16.1` ，
若想升级版本，请自行构建 [Dockerfile](https://github.com/Gitsifu/docker-atlassian-jira-software/blob/master/Dockerfile) 文件。

- 仓库地址：[Gitsifu/docker-atlassian-jira-software](https://github.com/Gitsifu/docker-atlassian-jira-software)
- JIRA官网下载地址：[JIRA software download archives](https://www.atlassian.com/zh/software/jira/download-archives)

## 申明

- 本项目只做个人学习研究之用，不得用于商业用途！
- 商业使用请向 [Atlassian](https://www.atlassian.com/) 购买正版，谢谢合作！

## 致谢

- 参考资料1：[Docker 部署 JIRA 和 Confluence（破解版）](https://www.cnblogs.com/quanzhanlaoliu/p/14091568.html)
- 参考资料2: [cptactionhank/docker-atlassian-jira-software](https://github.com/cptactionhank/docker-atlassian-jira-software)
- 参考资料3: [hgqapp/atlassian-agent](https://github.com/hgqapp/atlassian-agent)