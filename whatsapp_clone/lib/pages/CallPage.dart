import 'package:flutter/material.dart';
import 'package:whatsapp_clone/widget/TextCustum.dart';

class CallPage extends StatefulWidget {
  @override
  _CallPageState createState() => _CallPageState();
}

class _CallPageState extends State<CallPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center( 
        child:   TextCustum("Pour Commancer à appeler vos contact qui ont WhatsApp appuyer sur l'icone en bas de votre ecran. ",textAlign: TextAlign.center,fontSize: 15.0,color: Colors.grey[400],),
      
      ),
       floatingActionButton: FloatingActionButton(
         onPressed: (){},
         child: Icon(Icons.add_call),
         backgroundColor: Colors.green[500],
         ),
        
    );
 
  }
}