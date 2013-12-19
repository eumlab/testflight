# CocoaPods使用说明

1. 安装CocoaPods,运行`gem install cocoapods`, 如果没有使用rbenv之类的工具的话,会提示权限不足,加sudo.
2. 在需要加载EUMLib的项目根目录下新建一个Podfile文件,可以直接下我的配置文件https://gist.github.com/caiguo37/8035086
3. 在项目根目录下运行`pod`,会自动下载相关的库,并生成一个workspace文件.会看到类似这样的输出:

> Analyzing dependencies  
Fetching podspec for `EUMLib` from `~/Documents/workspace/EUMLab/eumlib/EUMLib.podspec`  
Downloading dependencies  
Installing EUMLib (0.1)  
Installing Facebook-iOS-SDK (3.10.0)  
Installing FlurrySDK (4.3.0)  
Installing Helpshift (4.0.0)  
Installing MBProgressHUD (0.8)  
Installing TheAmazingAudioEngine (1.2)  
Installing UMengAnalytics (2.2.1)  
Generating Pods project  
Integrating client project  
  
[!] From now on use `testCocoaPods.xcworkspace`.  

4.使用生成的workspace文件打开新的项目,EUMLib应该已经正常加载了.

# 示例代码使用说明
testCocoaPods为示例项目,打开testCocoaPods.xcworkspace前请运行下`pod`
