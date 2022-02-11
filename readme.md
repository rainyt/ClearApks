## 概述
用于快速清理手机上的apk使用，不是开发专业请不要直接使用，最好与相关知识的人引导使用（避免误删需要的APK）；该功能多用于测试机的测试包清理使用。

## 使用说明
- 安装Python3
- 配置adb环境变量
```shell
# 参考配置
# Android-platform-tools（Android Studio SDK 安装目录自带）
export PLATFORM_TOOLS=/Users/rainy/Library/Android/sdk/platform-tools
export PATH=$PLATFORM_TOOLS:$PATH
```
- 运行命令：
```shell
python3 clear_apks.py com.gamepkg
```