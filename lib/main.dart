import 'package:drapp/presentation/home_screen/dashboard.dart';
import 'package:drapp/presentation/home_screen/homepage.dart';
import 'package:drapp/presentation/schedule_screen/schedule.dart';
import 'package:drapp/presentation/splash_screen/splashscreen.dart';
import 'package:drapp/saveddrs.dart';
import 'package:drapp/wishlist.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main(){
  runApp( const MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context){
    return GetMaterialApp(
      title:"Dr Appointment App" ,
      theme: ThemeData(),
      debugShowCheckedModeBanner:false,
     home: MyDashboard(),
    );
  }
}
