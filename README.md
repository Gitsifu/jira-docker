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
java -jar atlassian-agent.jar -d -m xxx@qq.com -n jira-software -p jira -o http://你的IP:8080 -s B0TJ-B81R-L657-5KGS
```

