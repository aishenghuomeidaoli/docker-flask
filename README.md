# docker-flask
docker flask 最简实现

## 克隆项目并进入项目目录

```
cd myworkspace

git clone git@github.com:aishenghuomeidaoli/docker-flask.git

cd docker-flask
```

## 启动方式

* 手动构建镜像执行

```
docker build . -t mycentos7:v1

docker run -it --name myweb \
-v /path/to/docker-flask/web:/usr/src/app \
-w /usr/src/app \
-p 5000:5000 \
-d mycentos7:v1 python app.py
```

* Docker Compose启动

```
docker-compose up -d
```

## 检查服务

访问[http://0.0.0.0:5000/](http://0.0.0.0:5000/)

## 镜像及容器说明

镜像基于[centos](https://hub.docker.com/r/library/centos/):7，安装了`pip`和`flask`。

容器启动时，将项目web目录挂在到容器/usr/src/app文件夹中，设置此目录为工作目录，并映射容器5000端口至宿主机的5000端口。最后执行命令`python app.py`启动服务。