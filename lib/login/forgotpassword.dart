import 'package:flutter/material.dart';
import 'package:linkedin_clone/login/forgot.dart';
import 'package:linkedin_clone/login/otp.dart';
 class ForgotPassword extends StatefulWidget {
   const ForgotPassword({Key? key}) : super(key: key);

   @override
   State<ForgotPassword> createState() => _ForgotPasswordState();
 }

 class _ForgotPasswordState extends State<ForgotPassword> {
   TextEditingController _email = TextEditingController();
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
               padding: const EdgeInsets.only(top: 40,left: 30),
               child: Text("Forgot password?",style: TextStyle(fontSize: 35),),
             ),
           ),
           Container(
             child: Padding(
               padding: const EdgeInsets.only(left: 1),
               child: Text("Reset password in two quick steps"),
             ),
           ),
           SizedBox(height: 40,),
     Padding(
       padding: const EdgeInsets.only(left: 20,right: 20),
       child: TextField(
       controller: _email,
       style: TextStyle(color: Colors.black),
       decoration: InputDecoration(
         hintText: "Email or Phone",
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
           SizedBox(height: 50,),
           SizedBox(width: 350,height: 40,
             child: ElevatedButton(onPressed: (){
               Navigator.push(context, MaterialPageRoute(builder: (context)=>MyOtp()));
             },
                 child: Text("Send the code"),
             ),
           )
         ],
       ),
     );
   }
 }
