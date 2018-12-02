# my-config-files

写在前面：*需要注意的是，配置文件中涉及到用户名的地方，需要替换成你本机的用户名

主要记录Linux/Mac环境下的相关工具的配置文件：

- alfred-workflow
- bash
- git
- popclip
- tmux
- vim
- zsh

## tmux 快捷键

在终端中输入 tmux 就可以打开一个新的 tmux session，tmux 的所有操作必须先使用一个前缀键`prefix`（默认是 `ctrl + b`）进入命令模式。

## 信息查询

- `tmux list-keys` 列出所有可以的快捷键和其他 tmux 命令
- `tmux list-commands` 列出所有 tmux 命令及其参数，有用的命令
- `<prefix> ?` 显示快捷键的帮助文档

- session 会话：我的理解它就是类似一个 workspace 的概念
    - `tmux ls` 列出所有 session
    - `tmux new -s <session_name>` 创建一个名为`session_name`的 session
    - `tmux rename-session -t [n] <session_name>` 将数字编号为 n 的 session 重命名
    - `tmux a -t {n, session_name}` 指定 attach 到哪个 session
    - `tmux kill-session -t <session_name>` 关闭会话
    - `tmux kill-server` 关闭服务器，所有会话都将关闭
    - `<prifix>+s` 打开一个 session 会话列表，↑↓可以选择目标会话，←→可以收起或展开会话的窗口
- window 窗口：我的理解，它就像我们打开的一个 Chrome 客户端，我们可以同时打开多个客户端，每个客户端中打开多个标签，这个标签就和下面将要介绍的 pane 差不多
    - `tmux list-windows` 列出当前 session 中的所有 window
    - `<prefix> c` 创建一个新的 window，状态栏同时会新增一个窗口列表，等价于`tmux new-window` 
    - `<prefix> ,` 重命名当前 window，等价于`tmux rename-window`
    - `<prefix> p/n` 向前或向后切换当前活动的窗口
    - `<prefix> <n>` 通过指定 window 的窗口号，切换到目标窗口，等价于`tmux select-window -t <n>`
- pane 面板：一个 window 可以有不同的 pane，是不是和 Chrome 的标签页面的概念很类似
    - `<prefix> -` 水平切分
    - `<prefix> |` 垂直切分
    - `<prefix> h/j/k/l` 切换 pane，等价于`<prefix> 方向键`
    - `ctrl d` 关闭当前 pane，等价于当前 shell 中输入`exit` 

### 示例截图
- session 界面说明

![](https://ws3.sinaimg.cn/large/006tNbRwly1fxscxv0np8j30wv05b402.jpg)

- session 会话选择

![](https://ws1.sinaimg.cn/large/006tNbRwly1fxsa22tpexj30ce01uq31.jpg)


## vim 快捷键


## 参考

- [TimothyYe/mydotfiles](https://github.com/TimothyYe/mydotfiles)
