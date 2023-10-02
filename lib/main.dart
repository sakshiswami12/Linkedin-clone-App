import 'package:flutter/material.dart';
import 'package:linkedin_clone/login/join.dart';
import 'package:linkedin_clone/login/signin.dart';

 void main() {
   runApp(MyApp());
 }

  class MyApp extends StatelessWidget {
    const MyApp({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: loginpage(),
      );
    }
  }

   class loginpage extends StatefulWidget {
     const loginpage({Key? key}) : super(key: key);

     @override
     State<loginpage> createState() => _loginpageState();
   }

   class _loginpageState extends State<loginpage> {
     @override
     Widget build(BuildContext context) {
       return Scaffold(
           backgroundColor: Colors.white,
           body: Stack(
             children: [
               Container(
                 padding: EdgeInsets.only(top: 200,left: 90),
                 child: Text("Linkedin",style: TextStyle(fontFamily: "Times New Roman",color: Colors.blueAccent,fontSize: 40),),
               ),
              Padding(
                padding: EdgeInsets.only(top: 500,left: 60),
                child: SizedBox(width: 300,height: 40,
                  child: ElevatedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>join()));
                  },
                      child: Text("Join now"),
                  ),
                ),
              ),
               SizedBox(height: 10),
               Padding(
                 padding: const EdgeInsets.only(top: 600,left: 60),
                 child: SizedBox(width: 300,height: 40,
                   child: OutlinedButton(onPressed: (){},
                       child: Text("Continue with Google"),
                   ),
                 ),
               ),
               Padding(
                 padding: const EdgeInsets.only(top: 700,left: 60),
                 child: SizedBox(width: 300,height: 40,
                   child: OutlinedButton(onPressed: (){},
                       child: Text("Continue with Facebook"),
                   ),
                 ),
               ),
               Padding(
                 padding: const EdgeInsets.only(top: 750,left: 180),
                 child: TextButton(onPressed: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context)=>SignIN()));
                 },
                     child: Text("Signin"),
                 ),
               )
             ],
           ),

         );

     }
   }

