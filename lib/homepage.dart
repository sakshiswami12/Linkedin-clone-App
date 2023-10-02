import 'package:flutter/material.dart';
import 'package:linkedin_clone/drawer/message.dart';


import 'drawer/mydrawerheader.dart';
 class Home extends StatefulWidget {
   const Home({Key? key}) : super(key: key);

   @override
   State<Home> createState() => _HomeState();
 }

 class _HomeState extends State<Home> {
   int index=0;
   void update(int val){
     setState(() {
       print(val);
       index = val;
     });
   }

   List <dynamic> story = [
     'assets/images/photo1.jpg',

   ];



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
           IconButton(
               onPressed: (){
                 Navigator.push(context, MaterialPageRoute(builder: (context)=>Message()));
               },
               icon: Icon(Icons.message,color: Colors.black,)
           )
         ],
         ),
         drawer: Drawer(
           child: SingleChildScrollView(
             child: Container(
               child: Column(
                 children: [
                   MyHeaderDrawer(),
                   MyDrawerList(),
                 ],
               ),
             ),
           ),
         ),
       bottomNavigationBar: BottomNavigationBar(
         currentIndex: index,
         onTap: update,
         backgroundColor: Colors.white,
         selectedItemColor: Colors.black,
         items: const<BottomNavigationBarItem>[
           BottomNavigationBarItem(icon: Icon(Icons.home_outlined,color: Colors.black,),label: "Home"),
           BottomNavigationBarItem(icon: Icon(Icons.person,color: Colors.black,),label: "My Network",),
           BottomNavigationBarItem(icon: Icon(Icons.local_hospital,color: Colors.black,),label: "Post"),
           BottomNavigationBarItem(icon: Icon(Icons.notification_add,color: Colors.black,),label: "Notification"),
           BottomNavigationBarItem(icon: Icon(Icons.shopping_bag_rounded,color: Colors.black,),label: "Jobs"),
         ],
       ),
       body: Column(
         children: [
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: SingleChildScrollView(
               scrollDirection: Axis.horizontal,
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceAround,
                 children: List.generate(10, (index){
                 return Padding(
                   padding: const EdgeInsets.all(3.0),
                   child: Container(
                     width: 65,
                     height: 65,
                     decoration: BoxDecoration(
                         shape: BoxShape.circle,
                         boxShadow: [BoxShadow(
                           color: Colors.grey,
                         )]),
                     child: Padding(
                       padding: const EdgeInsets.all(3.0),
                       child: Container(
                         width: 67,
                         height: 67,
                         decoration: BoxDecoration(
                           shape: BoxShape.circle,
                           gradient: LinearGradient(
                             begin: Alignment.topCenter,
                             end: Alignment.bottomCenter,
                             colors: [Color(0xFF9B2282), Color(0xFFEEA863)],
                           ),
                         ),
                         child: Container(
                           width: 65,
                           height: 65,
                           decoration: BoxDecoration(
                               shape: BoxShape.circle,
                               image: DecorationImage(image: AssetImage('assets/images/photo1.jpg')),
                           ),
                         ),
                       ),
                     ),
                   ),
                 );
               }),),
             ),
           ),

         ],
       ),
     );
   }
   Widget MyDrawerList(){
     return Container(
      padding: EdgeInsets.only(top: 15,),
       child: Column(
             children: [
               menuItem(),
             ],
       ),
     );
   }
   Widget menuItem(){
     return Material(
       child: InkWell(
         child: Padding(
           padding: EdgeInsets.all(15.0),
           child: Row(
             children: [
               Expanded(child: Text("Groups",style: TextStyle(fontSize: 20,color: Colors.black),)),
              Expanded(child: Text("Events",style: TextStyle(fontSize: 20,color: Colors.black),)),
             ],
           ),
         ),
       ),
     );
   }
 }
