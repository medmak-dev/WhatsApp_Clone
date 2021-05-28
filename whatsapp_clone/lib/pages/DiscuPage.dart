import 'package:flutter/material.dart';
import 'package:whatsapp_clone/widget/MessagePage.dart';
import 'package:whatsapp_clone/widget/TextCustum.dart';

class DiscPage extends StatefulWidget {
  @override
  _DiscPageState createState() => _DiscPageState();
}

class _DiscPageState extends State<DiscPage> {

List<MessagePage> messageUser=[
   new MessagePage(userName:"Mylone Foko",lastMessage: "Bjr la mére",userImage: "assets/images/profil1.jpeg", heure:"23:04",smsNonLue: "1"),
  new MessagePage(userName:"Alex Francklin", lastMessage:"Yo pat comment tu va ?",userImage:"assets/images/profil2.jpeg",heure: "22:19"),
   new MessagePage(userName:"Junior Fotso",  lastMessage:"Yo xdk ?",userImage:"assets/images/profil3.jpeg", heure:"22:10",smsNonLue: "2"),
    new MessagePage(userName:"Lena Aude",  lastMessage:"Ma machine est off ",userImage:"assets/images/profil4.jpeg", heure:"22:05"),
     new MessagePage(userName:"Claudine ",  lastMessage:"Je suis dja arrivé !!",userImage:"assets/images/profil5.jpeg",heure: "21:17"),
        new MessagePage(userName:"Gaelle ",  lastMessage:"Rappelle moi la semaine proch..",userImage:"assets/images/profil6.jpeg", heure:"20:10",smsNonLue: "3"),
           new MessagePage(userName:"Auriane",  lastMessage:"Hey salut jespére que la famil..",userImage:"assets/images/elephan.jpg", heure:"20:00",smsNonLue: "1"),
              new MessagePage(userName:"Atala Stromae",  lastMessage:"Pére je ne sais pas ",userImage:"assets/images/pc.jpg", heure:"13:44",smsNonLue: "5"),
                 new MessagePage(userName:"Raissa ",  lastMessage:"Ok compris",userImage:"assets/images/savane.jpeg", heure:"13:40",),
                    new MessagePage(userName:"Chirstian",  lastMessage:"Je ne suis plus là ",userImage:"assets/images/toure.jpg", heure:"12:57",smsNonLue: "2"),

                         new MessagePage(userName:"Aleandra Talla",  lastMessage:"Je suis dja arrivé !!",userImage:"assets/images/profil5.jpeg",heure: "Hier"),
        new MessagePage(userName:"Gaelle ",  lastMessage:"Rappelle moi la semaine proch..",userImage:"assets/images/profil6.jpeg", heure:"Hier",smsNonLue: "3"),
           new MessagePage(userName:"Fotso IUT",  lastMessage:"Hey salut jespére que la famil..",userImage:"assets/images/elephan.jpg", heure:"Hier",smsNonLue: "1"),
              new MessagePage(userName:"Atala Stromae",  lastMessage:"Pére je ne sais pas ",userImage:"assets/images/pc.jpg", heure:"11/05/2021",smsNonLue: "5"),
                 new MessagePage(userName:"Mylone Foko",lastMessage: "Bjr la mére",userImage: "assets/images/profil1.jpeg", heure:"02/05/2021",smsNonLue: "1"),
  new MessagePage(userName:"Takam Foko", lastMessage:"Yo pat comment tu va ?",userImage:"assets/images/profil2.jpeg",heure: "18/04/2021"),
   new MessagePage(userName:"Michel",  lastMessage:"Yo xdk ?",userImage:"assets/images/profil3.jpeg", heure:"12/03/2021",smsNonLue: "2"),
    new MessagePage(userName:"Arlette",  lastMessage:"Ma machine est off ",userImage:"assets/images/profil4.jpeg", heure:"02/03/2021"),
     new MessagePage(userName:"Aleandra Talla",  lastMessage:"Je suis dja arrivé !!",userImage:"assets/images/profil5.jpeg",heure: "02/03/2021"),


];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Container(
        child: ListView.builder(
          itemCount:messageUser.length ,
          itemBuilder:(context,i){
              return new Container(
               //color: Colors.grey[700],
               padding: EdgeInsets.fromLTRB(10, 6, 10, 6),
               decoration: BoxDecoration(
                // color: Colors.grey[400],
               //  border: Border.all(color:Colors.grey),
               ),
                 child: Container(
                   height: 70,
                    decoration: BoxDecoration(
                // color: Colors.grey[500],
               //  border: Border.all(color:Colors.grey),
               ),
                   child: Row(
                     children: [
                       Container(
                         height: 70,
                         width: 70,
                        
                         decoration: BoxDecoration(
                          // color:Colors.grey[600],
                           borderRadius: BorderRadius.all(Radius.circular(50)),
                           image: DecorationImage(
                             image: AssetImage(messageUser[i].userImage),
                             fit: BoxFit.cover,
                         ),
                         ),
                       ),
                       SizedBox(width: 5,),
                       Expanded(
                         child: Container(
                           height: 80,
                           padding: EdgeInsets.symmetric(vertical: 13,horizontal: 15),
                           decoration: BoxDecoration(
                             border: Border(bottom: BorderSide(color: Colors.grey[300],width: 1.5)),
                            // color: Colors.grey[600],
                           ),
                           child: Column(
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           
                              children: [
                                Row(
                                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                   
                                  children: [
                                    TextCustum(messageUser[i].userName,color: Colors.grey[700],fontSize: 17.0,fontWeight: FontWeight.bold,),
                                     TextCustum(messageUser[i].heure,color: messageUser[i].smsNonLue==null?Colors.grey[500]: Colors.green[400],fontSize: 12.0,fontWeight: FontWeight.bold),
                                  ],
                              ),
                              SizedBox(height:5),
                                  Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                       Expanded(
                                         child: Container(
                                            child:  TextCustum(messageUser[i].lastMessage,color: Colors.grey[500],spacing: 0.80,fontSize: 14.0,fontWeight: FontWeight.bold,),
                                        
                                         ),),
                                        Container(
                                        padding: EdgeInsets.all(1),
                                        height: 17,
                                        width: 17,
                                        
                                        decoration: BoxDecoration(
                                          color:messageUser[i].smsNonLue==null?Colors.grey[100]: Colors.green[500] ,
                                          borderRadius: BorderRadius.all(Radius.circular(25))
                                        ),
                                        child: Center(
                                          child: TextCustum(messageUser[i].smsNonLue==null?"":messageUser[i].smsNonLue,color: Colors.grey[200],fontSize: 12.0,),
                                        )
                                      ),
                                      ],
                                  ),
                                ],
                         ),
                        ),
                       ),
                     ],
                   ),
                 ),
               
              );
          } ,
          )
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green[500],
        child: Icon(Icons.message),
        onPressed: (){},
        ),
    );
  }
}