import 'package:flutter/material.dart';
import 'package:linkedin_clone/homepage.dart';
 class password extends StatefulWidget {
   const password({Key? key}) : super(key: key);

   @override
   State<password> createState() => _passwordState();
 }

 class _passwordState extends State<password> {
   TextEditingController _email = TextEditingController();
   TextEditingController _password = TextEditingController();
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: Text("Linkedin",style: TextStyle(color: Colors.blue),),
         backgroundColor: Colors.white,
       ),
       body: Stack(
         children: [
           Container(
             padding: EdgeInsets.only(top: 40,left: 20),
             child: Text("Set your password",style: TextStyle(fontSize: 30,fontFamily: "bold"),),
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
                   TextField(
                     controller: _password,
                     style: TextStyle(color: Colors.black),
                     decoration: InputDecoration(
                         hintText: "Password*"
                     ),
                   ),
                   SizedBox(height: 20,),
                   SizedBox(width: 400,
                     child: ElevatedButton(onPressed: (){
                       Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
                     },
                       child: Text("Agree & Join"),
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
