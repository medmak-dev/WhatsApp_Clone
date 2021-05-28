import 'package:flutter/material.dart';
import 'package:whatsapp_clone/pages/CallPage.dart';
import 'package:whatsapp_clone/pages/DiscuPage.dart';
import 'package:whatsapp_clone/pages/StatutPage.dart';
import 'package:whatsapp_clone/widget/TextCustum.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.green,

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    debugShowCheckedModeBanner: false,
    );
    
  }
}

class MyHomePage extends StatefulWidget {

 @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

   @override
  Widget build(BuildContext context) {

    return DefaultTabController(
      
      initialIndex: 1,
      length: 4, 
      child: Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          backgroundColor: Colors.teal[900],
          title: TextCustum("WhatsApp",fontSize: 22.0,fontWeight: FontWeight.bold,spacing: 1.5,),
          actions: [
            IconButton(icon: Icon(Icons.search),iconSize: 25,color: Colors.grey[100], onPressed:(){}),
             IconButton(icon: Icon(Icons.more_vert),iconSize: 25,color: Colors.grey[100], onPressed:(){}),
          ],
           bottom: TabBar(
            
             indicatorColor: Colors.grey[100],//la couleur de la bar
             //unselectedLabelColor: Colors.grey[200],
             tabs: [
               
               Tab(
                 child:Icon((Icons.camera_alt),size: 21,),
                 ),
                 Tab(
                 child:Row(
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("DISC",style: TextStyle(fontSize: 16.0,letterSpacing: 0.8,fontWeight:FontWeight.bold),),
                   Container(
                     padding: EdgeInsets.all(2),
                     decoration: BoxDecoration(
                       color: Colors.teal[700],
                       borderRadius: BorderRadius.all(Radius.circular(25))
                     ),
                    child: Text("98", style: TextStyle(fontSize: 14.0,letterSpacing: 0.8,fontWeight:FontWeight.bold)),
                   ),
                  ],
                 ),
                 ),
                 Tab(
                 child:Text("STATUT",style: TextStyle(fontSize: 16.0,letterSpacing: 0.8,fontWeight:FontWeight.bold)),
                 ),
                  Tab(
                 child:Text("APPELS",style: TextStyle(fontSize: 16.0,letterSpacing: 0.8,fontWeight:FontWeight.bold)),
                 )
             ]
             ),
        ),
        body: TabBarView(children: <Widget>[
         
          Center(
            child:Text("Page1")
          ),
           DiscPage(),
          StatuPage(),
          CallPage(),
        ]),
      ),
      );
  }
}
