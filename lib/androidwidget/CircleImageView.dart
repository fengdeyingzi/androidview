
import 'package:flutter/material.dart';

import 'View.dart';


class CircleImageView extends StatelessWidget {
  double layout_width;
  double layout_height;
  double paddingLeft;
  double paddingRight;
  double paddingTop;
  double paddingBottom;
  double marginLeft;
  double marginRight;
  double marginTop;
  double marginBottom;
  int gravity;
  //暂未实现
  int layout_gravity;
  Color backgroundColor;
  String src;
  CircleImageView({this.layout_width,this.layout_height,this.paddingLeft,this.paddingRight,this.paddingTop,this.paddingBottom,this.marginLeft,this.marginTop,this.marginRight,this.marginBottom,this.gravity,this.layout_gravity,this.backgroundColor,this.src});

  @override
  Widget build(BuildContext context) {
    Alignment alignment = Alignment.topLeft;
    Widget layout = null;
    if(paddingLeft == null){
      paddingLeft = 0;
    }
    if(paddingRight == null){
      paddingRight = 0;
    }
    if(paddingTop == null){
      paddingTop = 0;
    }
    if(paddingBottom == null){
      paddingBottom = 0;
    }
    if(marginLeft == null){
      marginLeft = 0;
    }
    if(marginTop == null){
      marginTop = 0;
    }
    if(marginRight == null){
      marginRight = 0;
    }
    if(marginBottom == null){
      marginBottom = 0;
    }

    if (layout_width == WRAP_CONTENT) {
      layout = Padding(
        padding: EdgeInsets.fromLTRB(
            paddingLeft, paddingTop, paddingRight, paddingBottom),
        child: Align(
          widthFactor: 1,
          heightFactor: 1,
          child: Image.asset(src,width: layout_width,height: layout_height,),
        ),
      );
      if(backgroundColor!=null){
        layout = ColoredBox(color: backgroundColor, child: layout);
      }
      layout = Padding(
        padding: EdgeInsets.fromLTRB(
            marginLeft, marginTop, marginRight, marginBottom),
        child: layout,
      );


    }
    else {
      layout = Container(
//        color: Colors.red,
        width: layout_width,
        height: layout_height,
        color: backgroundColor,
        padding: EdgeInsets.fromLTRB(
            paddingLeft, paddingTop, paddingRight, paddingBottom),
        margin: EdgeInsets.fromLTRB(
            marginLeft, marginTop, marginRight, marginBottom),
        alignment: alignment,
        child:ClipOval(child: Image.asset(src,width: layout_width,height: layout_height,)),
      );
    }
    return layout;
  }

}

