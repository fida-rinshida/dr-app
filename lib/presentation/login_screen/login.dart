import 'package:drapp/presentation/login_screen/signin.dart';
import 'package:drapp/presentation/login_screen/signup.dart';
import 'package:flutter/cupertino.dart' show BorderRadius, BoxFit, BuildContext, Center, ClipRRect, Color, Column, Container, EdgeInsets, FontWeight, Image, Navigator, SafeArea, Size, SizedBox, StatelessWidget, Text, TextStyle, Widget;
import 'package:flutter/material.dart';

class login extends StatelessWidget {
  const login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Center(
              child: Container(
                margin: EdgeInsets.only(top: 100),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    "assets/online doctor.png",
                    fit: BoxFit.cover,
                    height: 100,
                    width: 100,
                  ),
                ),
              ),
            ),
            SizedBox(height: 15), // Add spacing between logo and text
            Text(
              'Health Mate',
              style: TextStyle(
                  color: Colors.black, // Adjust text color for visibility
                  fontSize: 20,
                  fontWeight: FontWeight.bold // Adjust text size as needed
              ),
            ),
            SizedBox(
              height: 120,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => signin() ,));
              },
              child: Text('Sign In',style: TextStyle(color: Colors.black),),
              style: ElevatedButton.styleFrom(
                  minimumSize: Size(180, 60),
                  backgroundColor: Colors.teal),

            ),
            SizedBox(height: 30,),
            ElevatedButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => signup() ,));
            },
              child: Text('Sign Up',style: TextStyle(color: Colors.black),),
              style: ElevatedButton.styleFrom(
                  minimumSize: Size(180, 60),
                  backgroundColor: Colors.teal
              ),
            ),
          ],
        ),
      ),
    );
  }
}