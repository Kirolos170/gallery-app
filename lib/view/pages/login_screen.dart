import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task/view/pages/gallery_screen.dart';
import 'package:task/viewmodel/login_cubit/login_cubit.dart';
import 'package:task/viewmodel/login_cubit/login_state.dart';

class LoginScreen extends StatelessWidget {

   LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {

    ScreenUtil.init(
        context ,
        designSize: Size(700, 990));
    return BlocProvider(
      create: (context) => LoginCubit() ,
      child: BlocConsumer<LoginCubit , LoginState>(
    listener: (context , state){},
    builder: (context , state){
      LoginCubit mycubit = LoginCubit.get(context) ;
      return Form(
        key: mycubit.formKey,
        child: SafeArea(
          child: Scaffold(
              resizeToAvoidBottomInset: false,
            backgroundColor: Color(0xffDDCDFF),

            body: Stack(
              children: [
                Positioned(
                    top: 50,
                    left: 30,
                    child: Image.asset("images/Scroll Group 1.png")),
                Positioned(
                    top: 5,
                    left: 5,
                    child: Image.asset("images/Vector 2011.png")),
                Positioned(
                    top: 10,
                    left: 10,
                    child: Image.asset("images/Vector 2011.png")),
                Positioned(
                    top: 2,
                    left: 3,
                    child: Image.asset("images/Vector 2011.png")),
                Positioned(
                  top: 250,
                  left: 80,

                  child: Text("""    My  \n Gallery """ , style: TextStyle(
                      color: Colors.black ,
                      fontWeight: FontWeight.w500 ,
                      fontSize: ScreenUtil().setSp(50) ,
                      fontFamily: 'Segoe UI'

                  ),),
                ) ,
                Positioned(
                  top: 400,
                  left:40 ,
                  child: Container(                                    // main container inside it :
                    child: Column(
                      children: [

                        Text("LOG IN" , style: TextStyle(
                            color: Colors.black ,
                            fontWeight: FontWeight.w500 ,
                            fontSize: ScreenUtil().setSp(50) ,
                            fontFamily: 'Segoe UI'

                        ),),
                        Container(
                          width: ScreenUtil().setWidth(500),
                          height: ScreenUtil().setHeight(60),

                          decoration: BoxDecoration(

                              borderRadius: BorderRadius.circular(15) ,
                              border: Border.all(color: Colors.black,width: 1)

                          ),
                          child: TextFormField(
                            style: TextStyle(fontSize: 10.0),
                            controller: mycubit.emailc,
                            validator: (value){

                              if (value!.isEmpty) {
                                return 'Please enter your email address';
                              } else if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value)) {
                                return 'Please enter a valid email address';
                              }
                              return null;


                            },
                            decoration: InputDecoration(

                                labelText: "user name" ,
                              labelStyle: TextStyle(fontSize: 12) ,
                              border: InputBorder.none, // Remove border to avoid exceeding borders

                              floatingLabelBehavior: FloatingLabelBehavior.never,
                            ),

                          ),
                        ) , // user name

                        SizedBox(height: ScreenUtil().setHeight(30),) ,

                        Container(
                          width: ScreenUtil().setWidth(500),
                          height: ScreenUtil().setHeight(60),

                          decoration: BoxDecoration(

                              borderRadius: BorderRadius.circular(15) ,
                              border: Border.all(color: Colors.black,width: 1)

                          ),
                          child: TextFormField(
                            style: TextStyle(fontSize: 10.0),
                            controller: mycubit.passwordc,
                            obscureText: false,
                            validator: (value){


                              if (value!.isEmpty) {
                                return 'Please enter your password';
                              } else if (value.length < 6) {
                                return 'Password must be at least 6 characters long';
                              }
                              return null;

                            },

                            decoration: InputDecoration(
                                labelText: "password" ,
                              labelStyle: TextStyle(fontSize: 12) ,
                              border: InputBorder.none, // Remove border to avoid exceeding borders
                              floatingLabelBehavior: FloatingLabelBehavior.never,

                            ),

                          ),
                        ) ,           // password
                        SizedBox(height: ScreenUtil().setHeight(50),) ,//  password

                        InkWell(
                          onTap: (){

                            if (mycubit.formKey.currentState!.validate())

                            {
                            mycubit.signIn(context);

                            }


                          },


                          child: Container(
                            child:Center(
                              child: Text("Submit" , style: TextStyle(
                                  color: Colors.black ,
                                  fontWeight: FontWeight.w500 ,
                                  fontSize: ScreenUtil().setSp(35) ,
                                  fontFamily: 'Segoe UI'

                              ),),
                            ),

                            width: ScreenUtil().setWidth(500),
                            height: ScreenUtil().setHeight(60),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.lightBlueAccent ,
                                border: Border.all(width: 1)


                            ),


                          ),
                        )

                      ],

                    ),

                    width: ScreenUtil().setWidth(550),
                    height: ScreenUtil().setHeight(400),
                    decoration: BoxDecoration(
                        color: Colors.white ,
                        borderRadius: BorderRadius.circular(30)


                    ),



                  ),
                )

              ],
            ),
          ),
        ),
      );


    },


      ),
    ) ;
  }
}

