# OpenLane Template

这个是我到的openlane模版，如需可自行下载使用。

使用方法：
1. 在你的芯片项目的目录执行以下命令
`git clone https://github.com/poorjobless/openlane-work-template openlane`

2. 进入openlane目录执行 `make image` 拉取官方docker镜像，若未安装docker请自行安装。

3. 用文本编辑器打开.bashrc或.zshrc将PDK_ROOT改成你的PDK安装目录或想要安装到的目录，
然后执行 `. .bashrc` 或 `source .bashrc` 初始化必要的环境变量
若你没有安装PDK或懒得修改.bashrc或.zshrc请执行 `make pdk` 安装PDK。

4. 请将project_name目录改成你的项目名称然后进入该目录。

5. 修改config.tcl文件将PROJECT_NAME替换为你的项目名称，将DESIGN_NAME替换为你的项目top模块名称
并修改CLOCK_PORT和REST_PORT将其改成你的时钟树端口和复位输入端口的引脚名称，然后执行 `make` 命令
若没提示任何错误在执行 `make` 后一段时间后既可生成版图gds文件。

本模版测试项目：[openlane-template-gcd](https://openlane.readthedocs.io/).

若想要目录支持.bashrc或.zshrc请自行打补丁后编译安装bash或zsh，补丁文件在patches目录
否则请执行 `. .bashrc` 或 `source .bashrc` 初始化必要的环境变量

启用目录支持.bashrc或.zshrc的好处是可以把一些常用的shell命令添加到.bashrc或.zshrc文件里面
每次切换到该目录或执行bash内置命令就会自动初始化环境变量或执行一些操作无需在敲一遍有效提升工作效率

若只想执行一次可以在.bashrc或.zshrc里添加判断逻辑执行完后创建名称为.bashrc.lock或.zshrc.lock文件
再次切换到该目录或执行bash内置命令都不会在执行.bashrc或.zshrc文件。

更多高级用法请自行探索[OpenLane](https://openlane.readthedocs.io/)和其子项目，本项目只是提供一个模版。

