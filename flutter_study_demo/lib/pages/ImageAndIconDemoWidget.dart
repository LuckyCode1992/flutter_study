import 'package:flutter/material.dart';

class ImageAndIconDemoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    /**
     * ImageProvider 是一个抽象类，主要定义了图片数据获取的接口load()，
     * 从不同的数据源获取图片需要实现不同的ImageProvider ，
     * 如AssetImage是实现了从Asset中加载图片的ImageProvider，而NetworkImage实现了从网络加载图片的ImageProvider。
     * Image widget有一个必选的image参数，它对应一个ImageProvider
     */
    var img = "images/0.jpg";
    String icons = "";
// accessible: &#xE914; or 0xE914 or E914
    icons += "\uE914";
// error: &#xE000; or 0xE000 or E000
    icons += " \uE000";
// fingerprint: &#xE90D; or 0xE90D or E90D
    icons += " \uE90D";
    return Scaffold(
      appBar: AppBar(
        title: Text("image_icon_demo"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
//            加载本地 asset中的图片
            Image(
              image: AssetImage("images/21.jpg"),
              width: 100,
            ),
            Image.asset(
              "images/21.jpg",
              width: 100,
            ),
//            加载网络图片
            Image(
              image: NetworkImage(
                  "https://avatars2.githubusercontent.com/u/20411648?s=460&v=4"),
              width: 100,
            ),
            Image.network(
              "https://avatars2.githubusercontent.com/u/20411648?s=460&v=4",
              width: 100,
            ),
//            图片的其他属性
//          width、height：用于设置图片的宽、高，当不指定宽高时，图片会根据当前父容器的限制，尽可能的显示其原始大小，
//          如果只设置width、height的其中一个，那么另一个属性默认会按比例缩放，但可以通过下面介绍的fit属性来指定适应规则。
//          fit：该属性用于在图片的显示空间和图片本身大小不同时指定图片的适应模式
//            fill：会拉伸填充满显示空间，图片本身长宽比会发生变化，图片会变形。
//            cover：会按图片的长宽比放大后居中填满显示空间，图片不会变形，超出显示空间部分会被剪裁。
//            contain：这是图片的默认适应规则，图片会在保证图片本身长宽比不变的情况下缩放以适应当前显示空间，图片不会变形。
//            fitWidth：图片的宽度会缩放到显示空间的宽度，高度会按比例缩放，然后居中显示，图片不会变形，超出显示空间部分会被剪裁。
//            fitHeight：图片的高度会缩放到显示空间的高度，宽度会按比例缩放，然后居中显示，图片不会变形，超出显示空间部分会被剪裁。
//            none：图片没有适应策略，会在显示空间内显示图片，如果图片比显示空间大，则显示空间只会显示图片中间部分。
//          color和 colorBlendMode：在图片绘制时可以对每一个像素进行颜色混合处理，color指定混合色，而colorBlendMode指定混合模式
//          repeat：当图片本身大小小于显示空间时，指定图片的重复规则
            Image.asset(
              "images/21.jpg",
              width: 300,
              height: 300,
              color: Colors.yellow,
              colorBlendMode: BlendMode.difference,
              fit: BoxFit.contain,
              alignment: Alignment.center,
              repeat: ImageRepeat.repeat,
            ),
            Image.asset(img),
            Image.asset(
              img,
              width: 100,
              height: 200,
              fit: BoxFit.fill,
            ),
            Image.asset(img, width: 100, height: 200, fit: BoxFit.contain),
            Image.asset(img, width: 100, height: 200, fit: BoxFit.cover),
            Image.asset(img, width: 100, height: 200, fit: BoxFit.fitWidth),
            Image.asset(img, width: 100, height: 200, fit: BoxFit.fitHeight),
            Image.asset(img, width: 100, height: 200, fit: BoxFit.none),

            Image.asset(
              img,
              width: 100,
              height: 200,
              color: Colors.blue,
              colorBlendMode: BlendMode.overlay,
            ),
            Image.asset(
              img,
              width: 100,
              height: 200,
              color: Colors.blue,
              colorBlendMode: BlendMode.color,
            ),
            Image.asset(
              img,
              width: 100,
              height: 200,
              color: Colors.blue,
              colorBlendMode: BlendMode.clear,
            ),
            Image.asset(
              img,
              width: 100,
              height: 200,
              color: Colors.blue,
              colorBlendMode: BlendMode.colorBurn,
            ),
            Image.asset(
              img,
              width: 100,
              height: 200,
              color: Colors.blue,
              colorBlendMode: BlendMode.colorDodge,
            ),
            Image.asset(
              img,
              width: 100,
              height: 200,
              color: Colors.blue,
              colorBlendMode: BlendMode.src,
            ),
            Image.asset(
              img,
              width: 100,
              height: 200,
              color: Colors.blue,
              colorBlendMode: BlendMode.difference,
            ),
            Image.asset(
              img,
              width: 100,
              height: 200,
              color: Colors.blue,
              colorBlendMode: BlendMode.dst,
            ),
            /**
             * Flutter中，可以像Web开发一样使用iconfont，iconfont即“字体图标”，它是将图标做成字体文件，然后通过指定不同的字符而显示不同的图片。
             * 在字体文件中，每一个字符都对应一个位码，而每一个位码对应一个显示字形，不同的字体就是指字形不同，即字符对应的字形是不同的。
             * 而在iconfont中，只是将位码对应的字形做成了图标，所以不同的字符最终就会渲染成不同的图标。
             *
             * 体积小：可以减小安装包大小。
             *  矢量的：iconfont都是矢量图标，放大不会影响其清晰度。
             *  可以应用文本样式：可以像文本一样改变字体图标的颜色、大小对齐等。
             * 可以通过TextSpan和文本混用。
             */
            Text(
              icons,
              style: TextStyle(
                  fontFamily: "MaterialIcons",
                  fontSize: 24.0,
                  color: Colors.green),
            ),
            Icon(Icons.accessible,color: Colors.green,),
            Icon(Icons.error,color: Colors.green,),
            Icon(Icons.fingerprint,color: Colors.green,),
          ],
        ),
      ),
    );
  }
}
