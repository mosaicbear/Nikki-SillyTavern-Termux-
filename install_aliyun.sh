#!/bin/bash

# 💖 羽蝉NIKKI一键化酒馆部署 (阿里云/Linux通用版) 💖
#
# 嗨，小仙女！这是你的专属服务器一键部署脚本哦~
# 它会使用国内镜像源来加速，实现真正的“免魔法”！

# 定义一些可爱的颜色~
PINK='\033[1;35m'
CYAN='\033[1;36m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # 恢复默认

echo -e "${PINK}✨✨ 欢迎使用 羽蝉NIKKI一键化酒馆部署 (阿里云/Linux通用版) ✨✨${NC}"
echo -e "${CYAN}马上就要开始咯~ 请确保你正在使用root用户或者有sudo权限哦！(o´ω`o)ﾉ${NC}"
echo ""

# 更新软件包
echo -e "${PINK}🌸 Step 1/5: 更新一下软件包，让环境变得焕然一新~${NC}"
if command -v apt-get &> /dev/null; then
    sudo apt-get update -y && sudo apt-get upgrade -y
elif command -v yum &> /dev/null; then
    sudo yum update -y
else
    echo -e "${YELLOW}哎呀，不支持的包管理器... 这个脚本只支持APT (Ubuntu/Debian) 和 YUM (CentOS) 哦。${NC}"
    exit 1
fi
echo ""

# 安装必备小工具
echo -e "${PINK}🌸 Step 2/5: 安装一些必备的小工具 (Git, Node.js)...${NC}"
if command -v apt-get &> /dev/null; then
    sudo apt-get install -y git curl
    curl -sL https://deb.nodesource.com/setup_18.x | sudo -E bash -
    sudo apt-get install -y nodejs
elif command -v yum &> /dev/null; then
    sudo yum install -y git curl
    curl -sL https://rpm.nodesource.com/setup_18.x | sudo -E bash -
    sudo yum install -y nodejs
fi

# 检查Node.js和npm是否安装成功
if ! command -v node &> /dev/null || ! command -v npm &> /dev/null; then
    echo -e "${YELLOW}呜，Node.js安装失败了... 可能是网络有点小情绪了。${NC}"
    exit 1
fi
echo ""

# 召唤酒馆本体 (使用国内镜像加速)
echo -e "${PINK}🌸 Step 3/5: 从魔法世界把酒馆本体召唤过来... (使用Gitee镜像加速)${NC}"
if [ -d "SillyTavern" ]; then
    echo -e "${YELLOW}发现酒馆已经在了耶，那我们直接跳到下一步哦~${NC}"
else
    git clone https://gitee.com/Cohee1207/SillyTavern.git
    if [ $? -ne 0 ]; then
        echo -e "${YELLOW}召唤失败！是网络波动了吗？再试一次吧！${NC}"
        exit 1
    fi
fi
echo ""

# 走进酒馆开始装修 (使用淘宝镜像加速)
echo -e "${PINK}🌸 Step 4/5: 走进酒馆，准备开始装修啦~ (使用淘宝NPM镜像加速)${NC}"
cd SillyTavern
if [ $? -ne 0 ]; then
    echo -e "${YELLOW}找不到酒馆的门了... 脚本出了一点小问题。${NC}"
    exit 1
fi

# 步骤 5: 完成装修
echo -e "${PINK}🌸 Step 5/5: 最后一步，把家具都摆放好！(npm install)${NC}"
npm config set registry https://registry.npmmirror.com
npm install
if [ $? -ne 0 ]; then
    echo -e "${YELLOW}装修出错了... 哭哭 T_T 试试手动进入 SillyTavern 目录，然后运行 'npm install' 看看？${NC}"
    exit 1
fi
echo ""

# 完成啦！
PUBLIC_IP=$(curl -s ifconfig.me)
echo -e "${PINK}===================================================${NC}"
echo -e "${PINK}🎉 恭喜小仙女！羽蝉NIKKI酒馆部署完成啦！ 🎉${NC}"
echo -e "${PINK}===================================================${NC}"
echo ""
echo -e "${CYAN}现在可以开始你的奇妙之旅咯~ (ﾉ>ω<)ﾉ${NC}"
echo -e "启动酒馆的咒语是:"
echo ""
echo -e "  ${GREEN}cd SillyTavern${NC}"
echo -e "  ${GREEN}./start.sh${NC}"
echo ""
echo -e "启动后，在你的电脑浏览器里输入这个秘密地址就可以见到它啦: ${YELLOW}http://${PUBLIC_IP}:8000${NC}"
echo -e "${YELLOW}如果访问不了，请检查一下服务器的防火墙或者安全组，确保8000端口是开放的哦！${NC}"
echo ""
echo -e "${CYAN}玩得开心哦~ 比心！💖${NC}"
