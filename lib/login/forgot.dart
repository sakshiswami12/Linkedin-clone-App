import 'package:flutter/material.dart';

  class Forgot extends StatefulWidget {
    const Forgot({Key? key}) : super(key: key);

    @override
    State<Forgot> createState() => _ForgotState();
  }

  class _ForgotState extends State<Forgot> {
    TextEditingController _firstname = TextEditingController();
    TextEditingController _lastname = TextEditingController();
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text("Linkedin",style: TextStyle(color: Colors.blue),),
        backgroundColor: Colors.white,
        ),
        body: Column(
          children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.only(top: 30,left: 20),
                child: Text("One last step, let's confirm your identity",style: TextStyle(fontSize: 30),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10,left: 20,right: 20),
              child: TextField(
                controller: _firstname,
              style: TextStyle(color: Colors.black),
              decoration: InputDecoration(
                hintText: "First name",
           enabledBorder: OutlineInputBorder(
           borderRadius: BorderRadius.circular(10),
           borderSide: BorderSide(
           color: Colors.black,
           width: 1,
          ),
         ),
              ),
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(top: 10,left: 20,right: 20),
              child: TextField(
                controller: _lastname,
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  hintText: "Last name",
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Colors.black,
                      width: 1,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 30,),
            SizedBox(width: 300,height: 40,
              child: ElevatedButton(onPressed: (){},
                  child: Text("Sumbit"),
              ),
            )
          ],
        ),
      );
    }
  }
