import 'package:flutter/material.dart';
import 'package:linkedin_clone/login/phone.dart';

 class join extends StatefulWidget {
   const join({Key? key}) : super(key: key);


   @override
   State<join> createState() => _joinState();
 }

 class _joinState extends State<join> {
   TextEditingController _firstname = TextEditingController();
   TextEditingController _lastname = TextEditingController();
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: Text("Linkedin",style: TextStyle(fontFamily: "Verdana",color: Colors.blue),),
         leading: Icon(Icons.arrow_back_outlined,color: Colors.blue,),
         backgroundColor: Colors.white,
       ),
       body: Stack(
         children: [
           Container(
             padding: EdgeInsets.only(top: 40,left: 20),
             child: Text("Add your name",style: TextStyle(fontSize: 30,fontFamily: "bold"),),
           ),
           SingleChildScrollView(
             child: Container(
               padding: EdgeInsets.only(top: 100),
               margin: EdgeInsets.only(right: 35,left: 35),
             child: Column(
               children: [
                 TextField(
                   controller: _firstname,
                   style: TextStyle(color: Colors.black),
                   decoration: InputDecoration(
                     hintText: "First name*"
                   ),
                 ),
                 SizedBox(height: 80,),
                 TextField(
                   controller: _lastname,
                   style: TextStyle(color: Colors.black),
                   decoration: InputDecoration(
                     hintText: "Last name*"
                   ),
                 ),
                 SizedBox(height: 20,),
                 SizedBox(width: 400,
                   child: ElevatedButton(onPressed: (){
                     Navigator.push(context, MaterialPageRoute(builder: (context)=>login()));
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
