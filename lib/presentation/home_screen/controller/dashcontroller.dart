import 'package:drapp/presentation/home_screen/homepage.dart';
import 'package:drapp/presentation/schedule_screen/schedule.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class dashcontroller extends GetxController{
  int selectedIndex = 0;
  final List<Widget> pages = [
    HomePage(),
    Schedule(),
    Container(),
    Container(),
  ];
  
}