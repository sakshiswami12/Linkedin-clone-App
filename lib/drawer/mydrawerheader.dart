import 'package:flutter/material.dart';
  class MyHeaderDrawer extends StatefulWidget {
    const MyHeaderDrawer({Key? key}) : super(key: key);
  
    @override
    State<MyHeaderDrawer> createState() => _MyHeaderDrawerState();
  }
  
  class _MyHeaderDrawerState extends State<MyHeaderDrawer> {
    @override
    Widget build(BuildContext context) {
      return  Container(
        color: Colors.white,
        width: double.infinity,
        height: 200,
        padding: EdgeInsets.only(top: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 10),
              height: 80,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('assets/images/profile.jpeg'),
                ),
              ),
            ),
            Text("Sakshi Swami",style: TextStyle(color: Colors.black,fontSize: 20),),
            Text("Computer Enggineer",style: TextStyle(color: Colors.black,fontSize: 14),)
          ],
        ),
      );
    }
  }
  