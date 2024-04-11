import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class Mygallercontainer extends StatelessWidget {
  const Mygallercontainer({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(
        context ,
        designSize: Size(800, 990));
    return Container(
      child: Image.asset("images/kateryna-hliznitsova-C9qvlcoqhKY-unsplash 1.png") ,
      height: ScreenUtil().setHeight(150),
      width: ScreenUtil().setWidth(300),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        
        
      ),
      
      
    );
  }
}
