import 'package:flutter/material.dart';

class Schedule extends StatelessWidget {
  const Schedule({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
        backgroundColor: Colors.transparent,
          title: const Center(child: Text("Wishlist",style: TextStyle(fontSize: 26,fontWeight: FontWeight.bold),)) ,
        leading: Icon(
        Icons.arrow_back,
        color: Colors.black,
    ),
      ),
        body:ListView(
          children: [
            ListTile(
              leading: Icon(Icons.icecream_outlined,color: Colors.amber,),
              title: Text("ITEM 1"),
              subtitle: Text("add to wishlist"),
              trailing:Icon(Icons.add_circle_outline),
            ),
            ListTile(
              leading: Icon(Icons.icecream_outlined,color: Colors.amber,),
              title: Text("ITEM 2"),
              subtitle: Text("add to wishlist"),
              trailing:Icon(Icons.add_circle_outline),
            ),
            ListTile(
              leading: Icon(Icons.icecream_outlined,color: Colors.amber,),
              title: Text("ITEM 3"),
              subtitle: Text("add to wishlist"),
              trailing:Icon(Icons.add_circle_outline),
            ),
          ],
        ) ,
    );

  }
}
