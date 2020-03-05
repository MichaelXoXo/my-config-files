# maven 的配置

## 安装maven

[官方安装包](https://maven.apache.org/download.cgi)，直接下载二进制包，我使用的是 `apach-maven-3.6.2-bin.tar.gz`

```
weget http://mirrors.tuna.tsinghua.edu.cn/apache/maven/maven-3/3.6.2/binaries/apache-maven-3.6.2-bin.tar.gz
tar xvf apache-maven-3.6.2-bin.tar.gz -C ~/opt
echo "export PATH=$PATH:/Users/michael/opt/apache-maven-3.6.2/bin" >> ~/.zshrc
source ~/.zshrc
```

到此，Mac 环境的 maven 的就已经安装好了，检测：

```
mvn --version
```

参考：
- [cnblogs-Maven - Mac下安装并配置Maven](https://www.cnblogs.com/helios-fz/p/11061033.html)

## 配置 maven 源

编辑 `/Users/michael/opt/apache-maven-3.6.2/conf/settings.xml`，在 `mirrors` 标签内，添加配置源，可以采用华为云镜像或者阿里源镜像：

```
<mirror>
    <id>huaweicloud</id>
    <mirrorOf>*</mirrorOf>
    <url>https://mirrors.huaweicloud.com/repository/maven/</url>
</mirror>
```

```shell
<mirror>
  <id>aliyunmaven</id>
  <mirrorOf>*</mirrorOf>
  <name>阿里云公共仓库</name>
  <url>https://maven.aliyun.com/repository/public</url>
</mirror>
```

到此，maven 源就配置好了，需要在IDE中选择这个配置文件，这样，就会生效。
