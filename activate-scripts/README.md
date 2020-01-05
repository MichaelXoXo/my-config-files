# 激活脚本

## 参考
- [Bartender 3无限试用方案](https://blog.cat73.org/20190801/2019080101.bartender3-crack/)
- [NavicatPremium12无限重置试用脚本（MacOS版）](https://zhile.io/2018/08/24/navicat-premium-reset-free-trial.html)

## 定时任务

为了避免过时，我在 Mac 上写了一个定时任务，使用 `crontab -e` 进入编辑，添加如下内容：

```shell
* * * * 0 sh /Users/michael/Documents/01-Code/00-Github-Own/my-config-files/activate-scripts/navicat/activate.sh
* * * * 0 sh /Users/michael/Documents/01-Code/00-Github-Own/my-config-files/activate-scripts/bartender/activate.sh
```

每周去执行我电脑上之前存储的激活脚本。

查看已经有的定时任务：`crontab -l`