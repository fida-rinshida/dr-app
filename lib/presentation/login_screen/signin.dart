import 'package:drapp/presentation/home_screen/homepage.dart';
import 'package:drapp/presentation/login_screen/login.dart';
import 'package:drapp/presentation/splash_screen/splashscreen.dart';
import 'package:flutter/material.dart';

import '../home_screen/dashboard.dart';

class signin extends StatelessWidget {
  const signin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent, // Transparent background
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Colors.green, Colors.blue]),
            ),
          ),
          Positioned(
              child: AppBar(
            backgroundColor: Colors.transparent,
            leading: IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => login(),
                    ));
              },
            ),
          )),
          Padding(
            padding: const EdgeInsets.only(top: 200, left: 150),
            child: Text(
              "SIGN IN",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Colors.white),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: TextField(
                  onChanged: (value) {},
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      contentPadding: const EdgeInsets.symmetric(
                        vertical: 5,
                        horizontal: 30,
                      ),
                      hintText: "Enter Your Email ",
                      suffixIcon: const Icon(
                        Icons.email_outlined,
                        color: Colors.teal,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        borderSide: BorderSide.none,
                      ),
                      hintStyle: TextStyle(color: Colors.grey)),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: TextField(
                  onChanged: (value) {},
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      contentPadding: const EdgeInsets.symmetric(
                        vertical: 5,
                        horizontal: 30,
                      ),
                      hintText: "Password",
                      suffixIcon: const Icon(
                        Icons.remove_red_eye_outlined,
                        color: Colors.teal,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        borderSide: BorderSide.none,
                      ),
                      hintStyle: TextStyle(color: Colors.grey)),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MyDashboard(),
                      ));
                },
                child: Text(
                  'Log In',
                  style: TextStyle(color: Colors.teal),
                ),
                style: ElevatedButton.styleFrom(
                    minimumSize: Size(130, 55),
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15))),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
