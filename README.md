# 💖 羽蝉NIKKI一键化酒馆部署 💖

嗨，各位小仙女！(o´ω`o)ﾉ 欢迎来到羽蝉NIKKI的专属酒馆部署项目！

这是一个为安卓手机Termux和Linux服务器（如阿里云）设计的，超级简单、超级可爱的一键化SillyTavern（酒馆）安装脚本合集。让你在手机或服务器上都能轻松拥有属于自己的AI聊天伴侣！

## ✨ 特点

*   **一键安装**：只需运行一个脚本，剩下的交给魔法吧！
*   **多平台支持**：提供Termux版和阿里云（Linux通用）版两个脚本。
*   **免魔法**：阿里云版脚本使用国内镜像源，下载速度起飞，无需特殊网络环境！
*   **少女风格**：从脚本到说明，全程可爱暴击，让安装过程也充满乐趣！
*   **中文友好**：所有的提示都是中文的，完全不用担心看不懂啦~

## 🚀 如何使用

### 📱 Termux (安卓手机)

1.  **在Termux中下载脚本**：
    *   打开Termux，运行下面的咒语，直接从GitHub把脚本召唤过来：
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

4.  **启动酒馆**：
    *   安装完成后，根据提示，使用以下咒语启动你的酒馆：
      ```bash
      cd SillyTavern
      ./start.sh
      ```

5.  **开始玩耍**：
    *   启动成功后，在手机浏览器里打开这个秘密通道：`http://127.0.0.1:8000` 就可以开始你的奇妙之旅啦！

### ☁️ 阿里云 / Linux服务器 (免魔法)

1.  **连接到你的服务器**：
    *   通过SSH工具（如Xshell, Termius等）连接到你的Linux服务器。

2.  **下载脚本**：
    *   运行下面的咒语，直接从GitHub把脚本召唤过来：
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

5.  **启动酒馆**：
    *   安装完成后，根据提示，使用以下咒语启动你的酒馆：
      ```bash
      cd SillyTavern
      ./start.sh
      ```

6.  **开始玩耍**：
    *   启动成功后，在你的电脑浏览器里打开 `http://<你的服务器公网IP>:8000` 就可以开始玩耍啦！

## 💖 加入我们

遇到问题或者想找姐妹们聊天？快来加入我们的QQ群吧！

**QQ群号：685080730**

<img src="qq群.jpg" width="250">

---

祝你玩得开心！比心！💖
