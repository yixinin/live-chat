# live chat

在线语音/视频通话服务：

开发语言：
- golang 服务器后台
- C#(WPF) 前端

服务器架构：
- chat服务器    (文字消息和控制消息)
- voip服务器    (音视频数据转发)

客户端：
- Windows WPF

服务发现：
- ETCD

通讯协议：
- HTTP
- Websocket
- Socket(TCP)

编码格式：
- H264 (Video)
- G729 (Audio)

服务依赖组件：
- ETCD
- MySQL
- MongoDB
- Redis

服务器间通信：
- GPRC (Protocol buffers)

如何使用：
- git clone https://github.com/yixinin/live-chat.git
- git submodule update --init --recursive (加载子模块)

使用docker-compose
- cd live-chat
- ./build.sh
- cd docker-compose
- docker-compose up -d 
- (需要创建数据库后重启服务)

手动编译：
- 安装etcd,mysql,mongo,redis
- 分别创建mysql,mongodb数据库
- 分别在go-voip, go-chat 目录 执行 go build
- 编辑配置文件 go-chat/config/app.yaml； go-voip/config/app.yaml
- 分别运行 chat,voip服务
- 使用vs2019打开livechat.wpf项目 添加引用H264LIb.dll (dll目录livechat-wpf\Voip\dll)
- 解决方案平台选择x64
- 复制openh264-2.0.0-win64.dll至项目 bin/x64/debug/openh264-2.0.0-win64.dll
- 编辑 livechat-wpf/Voip/Config.cs 11行对应的服务器地址 （多客户端）
- 运行调试
