# XCViperitDemo

基于 [Viperit](https://github.com/ferranabello/Viperit/tree/1.3.3) 创建的Viper架构的demo

初步用Viper架构创建一个简单的新闻列表

![Xnip2019-10-17_15-08-55.jpg](https://upload-images.jianshu.io/upload_images/1432381-56413facb4288066.jpg?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

# 感悟

## 使用 [Viperit](https://github.com/ferranabello/Viperit/tree/1.3.3) 架构的**优点**：

1，结构清晰；

2，分工明确；

3，解耦合强；

## 目前实践下来的**弊端**就是：

使用第三方框架尤其UI框架的时候会出现不能**多继承**导致冲突，进而不能使用第三方库

比如：

  使用 [XLPagerTabStrip](https://github.com/xmartlabs/XLPagerTabStrip)
  
  由于`Viperit`框架ViewController需要继承`UserInterface或TableUserInterface`
  
  而XLPagerTabStrip框架需要ViewController继承`ButtonBarPagerTabStripViewController`
  
  同时继承造成`多继承`问题
  
  ![Xnip2019-10-17_15-26-48.jpg](https://upload-images.jianshu.io/upload_images/1432381-005538020f2336cd.jpg?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
  
# 关于Viperit
  
高效快捷的Viperit模版生成工具

[Viperit](https://github.com/ferranabello/Viperit/tree/1.3.3)

## 使用哪个版本？

- 大部分公司项目估计要支持iOS 11.0以下，故不能用最新版本

- 最新版本demo中有swiftUI，只能用于iOS 13以上，也得注意

- 如下官方说明
```
iOS 11.0+ (for iOS 8+ support download v1.3.3) // 当前项目支持iOS 11以下就用v1.3.3, 否则可以用最新版本 
Swift 5.1 (for Swift 5 download v1.3.3, Swift 4.2 download v1.2.1, for Swift 4.1 download v1.1.0, for Swift 4 download v1.0.0, for Swift 3 download v0.8.0) // swift版本不通对应不同的版本 
Xcode 11 (for Xcode 10 download v1.3.3, for Xcode 9 download v1.1.0) // Xcode版本不同对应不同的版本
```

## Viperit模版生成工具导入到Xcode步骤说明

### 关于官方文档上设置方法的说明

```
Viperit Xcode templates can be found in the repository's /Templates/Viperit folder. To install them, open your terminal and run:

cd PATH/TO/REPO
mkdir -p ~/Library/Developer/Xcode/Templates/
cp -R Templates/Viperit ~/Library/Developer/Xcode/Templates/
```

#### Templates/Viperit从哪里来？（如图所示）

![Xnip2019-10-17_16-54-35.jpg](https://upload-images.jianshu.io/upload_images/1432381-b30b7b0d79afe761.jpg?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

![Xnip2019-10-17_16-55-23.jpg](https://upload-images.jianshu.io/upload_images/1432381-fe2a05d867c36b4f.jpg?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

#### 这几行命令的意思就是在`~/Library/Developer/Xcode`下创建`Templates`文件夹，`Templates/Viperit`中的内容复制到`Templates`文件夹下面，也可以手动复制过去

  - 复制好后文件目录如下
![Xnip2019-10-17_17-26-03.jpg](https://upload-images.jianshu.io/upload_images/1432381-1c77ed3f2615c712.jpg?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)


### 设置成功后，在任何Xcode项目中新建文件（cmd + N）就能看到Viperit模版

如果不行就重启Xcode

- Universal: “通用”用于手机和平板电脑

- Dedicated Tablet View: 专用平板电脑视图

![module_creation.gif](https://upload-images.jianshu.io/upload_images/1432381-88d5a94c587886ab.gif?imageMogr2/auto-orient/strip)
