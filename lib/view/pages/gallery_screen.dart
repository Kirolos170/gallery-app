import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../components/gallery_screen_container.dart';
class GalleryScreen extends StatelessWidget {
  const GalleryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(
        context ,
        designSize: Size(700, 990));
    return SafeArea(
      child: Scaffold(backgroundColor: Color(0xffDDCDFF),

        body: Column(
          children: [
          Image.asset("images/gellary.png") ,
            SizedBox(height: ScreenUtil().setHeight(50),) ,
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                Container(
                  child : Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [

Image.asset("images/icon.png" ,height: 50,) ,
                      Text("log out" , style: TextStyle(
                          color: Colors.black ,
                          fontWeight: FontWeight.w300 ,
                          fontSize: ScreenUtil().setSp(20) ,
                          fontFamily: 'Segoe UI'

                      ),),

                    ],
                  ) ,
                  height: ScreenUtil().setHeight(80),
                  width: ScreenUtil().setWidth(300),

                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15)
                  ),

                ) ,
                Container(
                  child : Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [

                      Image.asset("images/icon 2.png" ,height: 50,) ,
                      Text("upload" , style: TextStyle(
                          color: Colors.black ,
                          fontWeight: FontWeight.w300 ,
                          fontSize: ScreenUtil().setSp(20) ,
                          fontFamily: 'Segoe UI'

                      ),),

                    ],
                  ) ,
                  height: ScreenUtil().setHeight(70),
                  width: ScreenUtil().setWidth(300),

                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)
                  ),

                ) ,

              ],),
            ) ,
            SizedBox(height: ScreenUtil().setHeight(20),) ,
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, // Number of columns
                crossAxisSpacing: 2.0, // Horizontal spacing between items
                mainAxisSpacing: 3.0, // Vertical spacing between items
              ),
              itemCount: 9, // Number of items
              itemBuilder: (context, index) {
                return Mygallercontainer(); // Your custom container widget
              },
            )
          )


          ],
        ),

      ),
    );
  }
}
