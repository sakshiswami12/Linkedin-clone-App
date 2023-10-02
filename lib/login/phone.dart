import 'package:flutter/material.dart';
import 'package:linkedin_clone/login/password.dart';
 class login extends StatefulWidget {
   const login({Key? key}) : super(key: key);

   @override
   State<login> createState() => _loginState();
 }

 class _loginState extends State<login> {
   TextEditingController _email = TextEditingController();
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: Text("Linkedin",style: TextStyle(color: Colors.blue,fontFamily: "Verdana"),),
         backgroundColor: Colors.white,
       ),
       body: Stack(
         children: [
           Container(
             padding: EdgeInsets.only(top: 40,left: 20),
             child: Text("Add your email or phone",style: TextStyle(fontSize: 30,fontFamily: "bold"),),
           ),
           SingleChildScrollView(
             child: Container(
               padding: EdgeInsets.only(top: 100),
               margin: EdgeInsets.only(right: 35,left: 35),
               child: Column(
                 children: [
                   TextField(
                     controller: _email,
                     style: TextStyle(color: Colors.black),
                     decoration: InputDecoration(
                         hintText: "Email or Phone*"
                     ),
                   ),
                   SizedBox(height: 20,),
                   SizedBox(width: 400,
                     child: ElevatedButton(onPressed: (){
                       Navigator.push(context, MaterialPageRoute(builder: (context)=>password()));
                     },
                       child: Text("Continue"),
                     ),
                   )
                 ],
               ),
             ),
           ),
         ],
       ),
     );
   }
 }
