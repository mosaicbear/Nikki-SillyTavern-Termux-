#!/bin/bash

# 💖 羽蝉NIKKI一键化酒馆部署 💖
#
# 嗨，小仙女！这是你的专属酒馆一键部署脚本哦~
#
# 使用方法:
# 1. 把这个文件下载到手机里，放到 Termux 能找到的地方。
# 2. 在 Termux 里念出咒语: `chmod +x install_sillytavern_cn.sh` (给脚本一点魔法权限)
# 3. 然后再次念出咒语: `./install_sillytavern_cn.sh` 就可以开始啦！

# 定义一些可爱的颜色~
PINK='\033[1;35m'
CYAN='\033[1;36m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # 恢复默认

echo -e "${PINK}✨✨ 欢迎使用 羽蝉NIKKI一键化酒馆部署 ✨✨${NC}"
echo -e "${CYAN}马上就要开始咯~ 请姐妹们检查一下网络是否在线哦！(o´ω`o)ﾉ${NC}"
echo ""

# 步骤 1: 更新软件包
echo -e "${PINK}🌸 Step 1/5: 更新一下软件包，让环境变得焕然一新~${NC}"
pkg update -y && pkg upgrade -y
if [ $? -ne 0 ]; then
    echo -e "${YELLOW}哎呀，更新失败了呢... 检查下网络再试试吧！${NC}"
    exit 1
fi
echo ""

# 步骤 2: 安装必备小工具
echo -e "${PINK}🌸 Step 2/5: 安装一些必备的小工具，马上就好啦！${NC}"
pkg install git nodejs esbuild -y
if [ $? -ne 0 ]; then
    echo -e "${YELLOW}呜，安装失败了... 可能是网络有点小情绪了。${NC}"
    exit 1
fi
echo ""

# 步骤 3: 召唤酒馆本体
echo -e "${PINK}🌸 Step 3/5: 从魔法世界把酒馆本体召唤过来... (git clone)${NC}"
if [ -d "SillyTavern" ]; then
    echo -e "${YELLOW}发现酒馆已经在了耶，那我们直接跳到下一步哦~${NC}"
else
    git clone https://github.com/SillyTavern/SillyTavern
    if [ $? -ne 0 ]; then
        echo -e "${YELLOW}召唤失败！是网络波动了吗？再试一次吧！${NC}"
        exit 1
    fi
fi
echo ""

# 步骤 4: 走进酒馆开始装修
echo -e "${PINK}🌸 Step 4/5: 走进酒馆，准备开始装修啦~ (安装依赖)${NC}"
cd SillyTavern
if [ $? -ne 0 ]; then
    echo -e "${YELLOW}找不到酒馆的门了... 脚本出了一点小问题。${NC}"
    exit 1
fi

# 步骤 5: 完成装修
echo -e "${PINK}🌸 Step 5/5: 最后一步，把家具都摆放好！(npm install)${NC}"
npm install
if [ $? -ne 0 ]; then
    echo -e "${YELLOW}装修出错了... 哭哭 T_T 试试手动进入 SillyTavern 目录，然后运行 'npm install' 看看？${NC}"
    exit 1
fi
echo ""

# 完成啦！
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
echo -e "启动后，在浏览器里输入这个秘密地址就可以见到它啦: ${YELLOW}http://127.0.0.1:8000${NC}"
echo ""
echo -e "${CYAN}玩得开心哦~ 比心！💖${NC}"
