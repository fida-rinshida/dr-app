import 'package:drapp/presentation/home_screen/controller/controller.dart';
import 'package:drapp/presentation/home_screen/innerpage.dart';
import 'package:drapp/presentation/login_screen/signin.dart';
import 'package:drapp/saveddrs.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';


class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}
class _HomePageState extends State<HomePage>{
  final controller=Get.put(datacontroller());
bool book= false;

@override
void initstate(){
  super.initState();
  _loadBookmarkState();}
  _loadBookmarkState() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      book = prefs.getBool('isBookmarked') ?? false;
    });
  }
  _toggleBookmark() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      book = !book;
      prefs.setBool('isBookmarked', book);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading:IconButton(
          onPressed: () { Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => signin(),
              )); },
          icon: Icon(
            Icons.menu,
            color: Colors.black,
          ),
        ),

        actions: [IconButton(
          onPressed: () { Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => saved(),
              )); },
          icon: Icon(
            Icons.save,
            color: Colors.black,
          ),
        ),
        ],

      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(
                  width: 375,
                  height: 55,
                  child: Padding(
                    padding: EdgeInsets.only(left: 45, right: 30),
                    child: TextField(
                      onChanged: (value) {},
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        contentPadding: const EdgeInsets.symmetric(
                          vertical: 10,
                          horizontal: 10,
                        ),
                        hintText: "Search for doctor services",
                        suffixIcon: const Icon(Icons.search),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0),
                            borderSide: const BorderSide()),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(
                right: 170,
              ),
              child: const Text(
                "Upcoming appointments",
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Container(
                width: double.infinity,
                height: 140,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 3.0,
                      blurRadius: 5.0,
                    ),
                  ],
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [Colors.green, Colors.teal]),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // const SizedBox(height: 10),
                    Row(
                      children: [
                        Container(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: Image.asset(
                              "assets/doctorrr.jpg",
                              fit: BoxFit.cover,
                              height: 50,
                              width: 50,
                            ),
                          ),
                        ),
                        Container(
                          width: 300,
                          padding: EdgeInsets.only(left: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Dr. Stephy Thomas",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  const Text(
                                    "4.5",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 14.0),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 0,
                                ),
                                child: const Text(
                                  "Cardiologist",
                                  style: TextStyle(
                                      fontSize: 14.0, color: Colors.white),
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 0,
                                    ),
                                    child: const Text(
                                      "oct 24 | 2023",
                                      style: TextStyle(
                                          fontSize: 12.0, color: Colors.white),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 0),
                                    child: const Text(
                                      "11:30 am",
                                      style: TextStyle(
                                          fontSize: 12.0, color: Colors.white),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(
                right: 280,
              ),
              child: const Text(
                "Categories",
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 130,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Card(
                    child: Container(
                      margin: const EdgeInsets.all(15),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 50,
                            width: 100,
                            child: Image.asset("assets/heart.png"),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text("Cardiologist"),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    child: Container(
                      margin: const EdgeInsets.all(15),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 50,
                            width: 100,
                            child: Image.asset("assets/heart.png"),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text("Cardiologist"),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    child: Container(
                      margin: const EdgeInsets.all(15),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 50,
                            width: 100,
                            child: Image.asset("assets/heart.png"),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text("Cardiologist"),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    child: Container(
                      margin: const EdgeInsets.all(15),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 50,
                            width: 100,
                            child: Image.asset("assets/heart.png"),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text("Cardiologist"),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            GridView.builder(
              itemCount: 6,
              physics: NeverScrollableScrollPhysics(),
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, // Number of columns
                crossAxisSpacing: 10, // Horizontal space between items
                mainAxisSpacing: 10, // Vertical space between items
                mainAxisExtent: 250,
              ),
              itemBuilder: (context, index) {
                return Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.0),
                          border: Border.all(color: Colors.grey,),
                          color: Colors.white),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 7),
                        child: Column(
                          children: [
                            GestureDetector(
                              onTap: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => innerpage(
                                      images: controller.doctors[index].imagePath,text:controller.doctors[index].name,specialty:  controller.doctors[index].specialty,
                                    ),
                                  )),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image.asset(
                                  controller.doctors[index].imagePath,
                                  width: 170, // Specify the width
                                  height: 170, // Specify the height
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(
                                height: 10), // Space between the image and text
                            Text(
                              controller.doctors[index].name,
                              style: TextStyle(color: Colors.black, fontSize: 16,fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 5,),
                            Text(
                             controller.doctors [index].specialty,
                    style: TextStyle(color: Colors.grey, fontSize: 12,),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(right: 25,top: 15,child: IconButton(onPressed: () {
                      controller.addItem(controller.doctors[ index]);
                      setState(() {
                        book=!book;
                      });
                    }, icon:book?Icon(Icons.bookmark):Icon( Icons.bookmark_outline))),

                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
