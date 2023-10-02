import 'package:flutter/material.dart';
import 'package:linkedin_clone/login/forgotpassword.dart';
import 'package:linkedin_clone/login/phone.dart';

 class SignIN extends StatefulWidget {
   const SignIN({Key? key}) : super(key: key);

   @override
   State<SignIN> createState() => _SignINState();
 }

 class _SignINState extends State<SignIN> {
   TextEditingController _email = TextEditingController();
   TextEditingController _password = TextEditingController();
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         backgroundColor: Colors.white,
         title: Text("Linkedin",style: TextStyle(color: Colors.blue),),
       ),
       body: Stack(
         children: [
           Container(
             child: Padding(
               padding: const EdgeInsets.only(top: 20,left: 20),
               child: Text("Sign in",style: TextStyle(fontSize: 30),),
             ),
           ),
           Padding(
             padding: EdgeInsets.only(top: 40,left: 20),
             child: TextButton(onPressed: (){
               Navigator.push(context, MaterialPageRoute(builder: (context)=>login()));
             },
                 child: Text("or Join LinkedIn"),
             ),
           ),

           Padding(
             padding: const EdgeInsets.only(top: 100,left: 25),
             child: SizedBox(width: 350,height: 60,
               child: OutlinedButton(onPressed: (){},
                   child: Text("Sign in with Google",style: TextStyle(fontSize: 20,color: Colors.black),)
               ),
             ),
           ),
           Padding(
             padding: const EdgeInsets.only(top: 180,left: 25),
             child: SizedBox(width: 350,height: 60,
               child: OutlinedButton(onPressed: (){},
                 child: Text("Sign in with Apple",style: TextStyle(fontSize: 20,color: Colors.black),),
               ),
             ),
           ),
           Padding(
             padding: const EdgeInsets.only(top: 260,left: 25),
             child: SizedBox(width: 350,height: 60,
               child: OutlinedButton(onPressed: (){},
                   child: Text("Sign in with Facebook",style: TextStyle(fontSize: 20,color: Colors.black),),
               ),
             ),
           ),
           Container(
             child: Padding(
               padding: const EdgeInsets.only(top: 350,left: 20),
               child: Text("------------------------ or -----------------------",style: TextStyle(fontSize: 20,color: Colors.grey[400]),),
             ),
           ),

     SingleChildScrollView(
     child: Container(
     padding: EdgeInsets.only(top: 400),
     margin: EdgeInsets.only(right: 35,left: 35),
     child: Column(
     children: [
     TextField(
     controller: _email,
     style: TextStyle(color: Colors.black),
     decoration: InputDecoration(
     hintText: "Email or Phone"
     ),
     ),
       SizedBox(height: 20,),
       TextField(
         controller: _password,
         style: TextStyle(color: Colors.black),
         decoration: InputDecoration(
           hintText: "Password"
         ),
       ),
       SizedBox(height: 20,),
       TextButton(onPressed: (){
         Navigator.push(context, MaterialPageRoute(builder: (context)=>ForgotPassword()));
       },
           child: Text("Forgot password?",style: TextStyle(color: Colors.blue.shade700),),
       ),
       SizedBox(width: 400,
         child: ElevatedButton(onPressed: (){},
             child: Text("Continue"),
         ),
       )
     ]
     )
     ),
     )
         ],
       ),
     );
   }
 }
