import 'package:drapp/presentation/home_screen/controller/controller.dart';
import 'package:drapp/presentation/home_screen/homepage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class saved extends StatefulWidget {
  const saved({super.key});

  @override
  State<saved> createState() => _savedState();
}

class _savedState extends State<saved> {
  final controller=Get.put(datacontroller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: const Center(
              child: Text(
            "Wishlist",
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold,color: Colors.amber),
          )),
          leading:IconButton(
            onPressed: () { Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomePage(),
                )); },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 20),
          child:Obx(() =>  ListView.builder(
            shrinkWrap: true,
            itemCount: controller.wishlist.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(controller.wishlist[index].imagePath,
                      width: 120,
                      height: 120,
                    ),
                    Text(controller. wishlist[index].name,style: TextStyle(fontSize: 16),),
                    IconButton(onPressed: () {
                    controller.remove(controller.wishlist[index]);
                    }, icon: Icon(Icons.remove))
                  ],
                ),
              );
            },
          ),)
        ));
  }
}
