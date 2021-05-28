import 'package:flutter/material.dart';
import 'package:whatsapp_clone/widget/Statut.dart';
import 'package:whatsapp_clone/widget/TextCustum.dart';

class StatuPage extends StatefulWidget {
  @override
  _StatuPageState createState() => _StatuPageState();
}

class _StatuPageState extends State<StatuPage> {

     
   
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
       

        child:Column(
          children: [
            Container(
              height: 90,
             
              
            //  color: Colors.grey[300],
              padding: EdgeInsets.fromLTRB(10, 6, 10, 5),
              child: Row(
                children: [
                  
                  Container(
                  // color: Colors.blue[200],
                    height: 70,
                    width: 70,
                    padding: EdgeInsets.all(3),
                    child: Container(
                    height: 60,
                    width: 60,
                   // padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                       borderRadius: BorderRadius.all(Radius.circular(50),),
                       image: DecorationImage(image: AssetImage("assets/images/avatar/avatar.jpg"),fit: BoxFit.cover),
                       boxShadow: [
                         BoxShadow(
                           color: Colors.grey[300],
                           offset: Offset(1, 1)
                         ),
                       ]
                    ),
                    child: Stack(
                      children: [
                        
                        Positioned(
                          bottom: 10,
                        right: 2,
                          child: Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                              color: Colors.green[400],
                              borderRadius: BorderRadius.all(Radius.circular(50))
                            ),
                            child: Center(child: Icon(Icons.add,color: Colors.grey[100],size: 19,),),
                          )
                          )
                      ],
                    ),
                  ),
                  ),
                  SizedBox(width:10),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical:12),
                  //  color: Colors.pink[200],
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(child:  TextCustum("Mon Statut",color: Colors.grey[700],fontSize: 19.0,fontWeight: FontWeight.bold,),),
                         TextCustum("Appuyer pour ajouter un statut",color: Colors.grey[400],fontSize: 15.5,fontWeight: FontWeight.bold,),
                      ],
                    ),
                  ),),
                ],),
            ),
           
             // SizedBox(height:3),
              stories(statutUser: new Statut(userName:"Gaelle ",userImage:"assets/images/profil6.jpeg", heure:"A l'instant"),),
              stories(statutUser:new Statut(userName:"Auriane", userImage:"assets/images/elephan.jpg", heure:"A l'instant"),),

                
              stories(statutUser:new Statut(userName:"Lena Aude",userImage:"assets/images/profil4.jpeg", heure:"Aujourd'huit à 22:05"),), 
              stories(statutUser: new Statut(userName:"Claudine ",userImage:"assets/images/profil5.jpeg",heure: "Aujourd'huit à 21:17"),),
              stories(statutUser: new Statut(userName:"Gaelle ",userImage:"assets/images/profil6.jpeg", heure:"Aujourd'huit à 20:10"),),
              stories(statutUser:new Statut(userName:"Auriane", userImage:"assets/images/elephan.jpg", heure:"Aujourd'huit à 20:00"),),
              stories(statutUser:new Statut(userName:"Atala Stromae",userImage:"assets/images/pc.jpg", heure:"Aujourd'huit à 13:44"),),
              stories(statutUser:new Statut(userName:"Arlette",userImage:"assets/images/savane.jpeg", heure:"Aujourd'huit à 13:40",),),

          ],
        ) ,
      ),
      
       floatingActionButton:FloatingActionButton(
                onPressed: (){},
                child: Icon(Icons.photo_camera),
                backgroundColor: Colors.green[500],
                ),
                
                
    );
  }

  Widget stories({statutUser}){
    return  Container(
                child: Container(
              height: 90,
              
            //  color: Colors.grey[300],
              padding: EdgeInsets.fromLTRB(10, 6, 10, 11),
              child: Row(
                children: [
                  Container(
                  // color: Colors.blue[200],
                    height: 70,
                    width: 70,
                    padding:EdgeInsets.all(1.5),
                    decoration: BoxDecoration(
                border:Border.all(color:Colors.green[600],width:2),
                borderRadius: BorderRadius.all(Radius.circular(50),),
              ),
                   
                    child: Container(
                    height: 60,
                    width: 60,
                   // padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                       borderRadius: BorderRadius.all(Radius.circular(50),),
                       image: DecorationImage(image: AssetImage(statutUser.userImage),fit: BoxFit.cover),
                       boxShadow: [
                         BoxShadow(
                           color: Colors.grey[300],
                           offset: Offset(1, 1)
                         ),
                       ]
                    ),
                   
                  ),
                  ),
                  SizedBox(width:10),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical:12),
                      decoration: BoxDecoration(
                        border: Border(bottom: BorderSide(color:Colors.grey[300]))
                      ),
                  //  color: Colors.pink[200],
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(child:  TextCustum(statutUser.userName,color: Colors.grey[700],fontSize: 19.0,fontWeight: FontWeight.bold,),),
                         TextCustum(statutUser.heure,color: Colors.grey[400],fontSize: 15.5,fontWeight: FontWeight.bold,),
                      ],
                    ),
                  ),),
                ],),
            ),
              );
  }
}