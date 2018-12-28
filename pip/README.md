## Python 的 pip 源修改

国内的一些 pip 镜像：
- 阿里云 https://mirrors.aliyun.com/pypi/simple/ 
- 中国科技大学 https://pypi.mirrors.ustc.edu.cn/simple/ 
- 豆瓣(douban) http://pypi.douban.com/simple/ 
- 清华大学 https://pypi.tuna.tsinghua.edu.cn/simple/ 
- 中国科学技术大学 https://pypi.mirrors.ustc.edu.cn/simple/

## Linux

```shell
mkdir ~/.pip
cp -r .pip ~/
```

## 配置文件说明

```shell
#在.pip目录创建并编辑pip.conf
#pip安装需要使用的https加密，所以在此需要添加trusted-host
[global]
trusted-host = mirrors.ustc.edu.cn
index-url = http://mirrors.aliyun.com/pypi/simple/ 
```

先在基本上都已经切 https 了，一些教程还比较老，所以，只需如下配置即可：

`~/.pip/pip.conf` 内容：
```shell
[global]
index-url = https://mirrors.aliyun.com/pypi/simple/ 
```

## 参考
- [pip国内镜像源的配置](https://www.jianshu.com/p/3621780417be)
- [阿里云镜像](https://opsx.alibaba.com/mirror)
- [win10环境下如何修改Python pip的更新源](https://www.zhihu.com/question/38341743)
