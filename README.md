Windows下aria2配置文件

1.下载解压后把aria2文件夹放在D盘根目录，修改aria2.conf文件，自定义下载位置和RPC密钥

        # 下载目录。可使用绝对路径或相对路径，默认：当前启动位置 
        dir=E:/Downloads 
        ... 
        # RPC 密钥 
        rpc-secret=yoursecret

2.在aria2文件夹下新建文本文档XXX.txt，重命名为aria2.session

3.双击HideRun.vbs即可运行，如果要开机启动，则建立HideRun.vbs的快捷方式，放在C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Startup目录下，找不到ProgramData文件夹的，勾选显示隐藏文件夹
