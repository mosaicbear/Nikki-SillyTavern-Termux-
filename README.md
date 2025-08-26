# 💖 羽蝉NIKKI一键化酒馆部署 💖

嗨，各位小仙女！(o´ω`o)ﾉ 欢迎来到羽蝉NIKKI的专属酒馆部署项目！

这是一个为安卓手机Termux和Linux服务器（如阿里云）设计的，超级简单、超级可爱的一键化SillyTavern（酒馆）安装脚本合集。让你在手机或服务器上都能轻松拥有属于自己的AI聊天伴侣！

## ✨ 版本选择

*   **`install_termux.sh` -> 📱 安卓Termux版**
    *   **需要魔法上网环境**，因为它需要从GitHub拉取代码。
    *   适合想在手机上随时随地玩耍的小仙女。

*   **`install_aliyun.sh` -> ☁️ 阿里云/Linux通用版**
    *   **无需魔法上网**，脚本内置国内镜像加速，下载速度起飞！
    *   适合拥有自己服务器，追求稳定和高性能的玩家。

## 🚀 如何使用

### 📱 Termux (安卓手机)

1.  **在Termux中下载项目**：
    *   打开Termux，运行下面的咒语，直接从GitHub把所有文件召唤过来：
      ```bash
      git clone https://github.com/mosaicbear/Nikki-SillyTavern-Termux.git
      cd Nikki-SillyTavern-Termux
      ```

2.  **赋予魔法权限**：
    *   念出下面的咒语：
      ```bash
      chmod +x install_termux.sh
      ```

3.  **开始安装**：
    *   运行下面的咒语开始安装：
      ```bash
      ./install_termux.sh
      ```

### ☁️ 阿里云 / Linux服务器 (免魔法)

1.  **连接到你的服务器**：
    *   通过SSH工具（如Xshell, Termius等）连接到你的Linux服务器。

2.  **下载项目**：
    *   运行下面的咒语，直接从GitHub把所有文件召唤过来：
      ```bash
      git clone https://github.com/mosaicbear/Nikki-SillyTavern-Termux.git
      cd Nikki-SillyTavern-Termux
      ```

3.  **赋予魔法权限**：
    *   念出下面的咒语：
      ```bash
      chmod +x install_aliyun.sh
      ```

4.  **开始安装**：
    *   运行下面的咒语开始安装：
      ```bash
      ./install_aliyun.sh
      ```

---

**安装完成后，如何启动酒馆？**

*   安装完成后，脚本会提示你如何启动。通常是进入 `SillyTavern` 目录，然后运行 `./start.sh`。
*   **Termux用户**：在手机浏览器访问 `http://127.0.0.1:8000`
*   **服务器用户**：在电脑浏览器访问 `http://<你的服务器公网IP>:8000` (请确保服务器的8000端口是开放的哦！)

## 💖 加入我们

遇到问题或者想找姐妹们聊天？快来加入我们的QQ群吧！

**QQ群号：685080730**

<img src="qq群.jpg" width="250">

---

祝你玩得开心！比心！💖
