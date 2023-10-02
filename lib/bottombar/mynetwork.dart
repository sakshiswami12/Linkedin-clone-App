import 'package:flutter/material.dart';
 class Network extends StatefulWidget {
   const Network({Key? key}) : super(key: key);

   @override
   State<Network> createState() => _NetworkState();
 }
 class _NetworkState extends State<Network> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         backgroundColor: Colors.white,
         leading: Builder(
           builder: (context) {
             return IconButton(onPressed: () => Scaffold.of(context).openDrawer(),
                 icon: Icon(Icons.person_2_sharp,color: Colors.black,)
             );
           },
         ),
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
           Icon(Icons.message,color: Colors.black,),
         ],
       ),
     );
   }
 }
