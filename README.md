# XCViperitDemo
基于Viperit创建的Viper架构的demo

# Viperit
高效快捷的Viperit模版生成工具
[ferranabello/Viperit](https://github.com/ferranabello/Viperit/tree/1.3.3)

初步用Viper架构创建一个简单的新闻列表

![Xnip2019-10-17_15-08-55.jpg](https://upload-images.jianshu.io/upload_images/1432381-56413facb4288066.jpg?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)


# 感悟
目前发现的弊端就是：
1，使用第三方框架尤其UI框架的时候会出现不能“多继承”导致冲突，进而不能使用第三方库
比如：
  使用 [XLPagerTabStrip](https://github.com/xmartlabs/XLPagerTabStrip)
  由于`Viperit`框架ViewController需要继承`UserInterface或TableUserInterface`
  而XLPagerTabStrip框架需要ViewController继承`ButtonBarPagerTabStripViewController`
  同时继承造成`多继承`问题
  ![Xnip2019-10-17_15-26-48.jpg](https://upload-images.jianshu.io/upload_images/1432381-005538020f2336cd.jpg?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
