
import 'package:drapp/presentation/schedule_screen/schedule.dart';
import 'package:flutter/material.dart';

class innerpage extends StatelessWidget {
  final String images;
  final String text;
  final String specialty;
  const innerpage({super.key, required this.images, required this.text,required this.specialty});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [
           Image.asset(images),
          Text(text,style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold,),),
          Text(specialty,style: TextStyle(color: Colors.grey,fontSize: 14,),),
          SizedBox(
            height: 10,
          ),
          TextButton(
            style: TextButton.styleFrom(
                padding: EdgeInsets.zero,
                fixedSize: Size(120, 50),
                backgroundColor:
                Colors.teal,
                shape: RoundedRectangleBorder(
                  borderRadius:
                  BorderRadius.circular(
                      10),
                )),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) =>Schedule() ,));
            },
            child: Center(
              child: Text(
                "Book Appointment",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 11,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
