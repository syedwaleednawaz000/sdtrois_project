
import 'package:client_project/Sign_in.dart';
import 'package:client_project/Sign_up.dart';
import 'package:client_project/practice.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context , child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'First Method',
          // You can use the library anywhere in the app even in theme
          theme: ThemeData(
            primarySwatch: Colors.blue,
            textTheme: Typography.englishLike2018.apply(fontSizeFactor: 1.sp),
          ),
          home: MyHomePage(),
        );
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key,});


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 300,),
              //Sign_up Button
              ElevatedButton(
                style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.amber)),
                child: Text('Sign up'),
                onPressed: () {
                  showModalBottomSheet(
                    isScrollControlled: true,
                    context: context,
                    backgroundColor: Colors.grey,
                    // shape: RoundedRectangleBorder(
                    //   borderRadius: BorderRadiusDirectional.only(
                    //     topEnd: Radius.circular(25),
                    //     topStart: Radius.circular(25),
                    //   ),
                    // ),
                    builder: (context) => Container(
                      padding: EdgeInsetsDirectional.only(
                        start: 0,
                        end: 0,
                        bottom: 0,
                        top: 100,
                      ),
                      child: Sign_up(),
                    ),
                  );
                },
              ),
              SizedBox(height: 10),
              //Log_in button
              ElevatedButton(

                style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.amber)),
                child: Text('Sign In'),
                onPressed: () {
                  showModalBottomSheet(
                    isScrollControlled: true,
                    context: context,
                    backgroundColor: Colors.grey,
                    // shape: RoundedRectangleBorder(
                    //   borderRadius: BorderRadiusDirectional.only(
                    //     topEnd: Radius.circular(25),
                    //     topStart: Radius.circular(25),
                    //   ),
                    // ),
                    builder: (context) => Container(
                      padding: EdgeInsetsDirectional.only(
                        start: 0,
                        end: 0,
                        bottom: 0,
                        top: 100,
                      ),
                      child: Sign_in(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
