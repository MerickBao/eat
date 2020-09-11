import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({
    Key key,
    @required this.child, //// say a is mandatory:声明该参数时必须的
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //提供屏幕的长和宽
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: size.width,
      child: Stack(
        alignment: Alignment.center, //组件的默认分配位置
        children: [
          Positioned(
            //控制组件在Stack中的位置
            top: 0, //距离该方向的大小
            left: 0,
            child: Image.asset(
              "assets/images/main_top.png",
              width: size.width * 0.3, //图片的宽
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: Image.asset(
              "assets/images/main_bottom.png",
              width: size.width * 0.2,
            ),
          ),
          child,
        ],
      ),
    );
  }
}
