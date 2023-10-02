import 'package:flutter/material.dart';

 class Message extends StatefulWidget {
   const Message({Key? key}) : super(key: key);

   @override
   State<Message> createState() => _MessageState();
 }

 class _MessageState extends State<Message> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         leading: IconButton(
           onPressed: (){
             Navigator.of(context).pop();
           },
           icon: Icon(Icons.arrow_back_outlined,color: Colors.black,),
         ),
         backgroundColor: Colors.white,
         title: Container(
           width: double.infinity,
           height: 40,
           decoration: BoxDecoration(
               color: Colors.blue.shade50,borderRadius: BorderRadius.circular(5)
           ),
           child: Center(
             child: TextField(
               decoration: InputDecoration(
                 prefixIcon: Icon(Icons.search),
               ),
             ),
           ),
         ),
         actions: [
           IconButton(onPressed: (){},
               icon: Icon(Icons.menu),
           ),
           // IconButton(onPressed: (){},
           //     icon: Icon(Icons.vertical)
           // )
         ],
       ),
     );
   }
 }
