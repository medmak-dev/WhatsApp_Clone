

class MessagePage {
  String userName;
  String lastMessage;
  String heure;
  String userImage;
  String smsNonLue;
  MessagePage({String userName,String userImage,String heure, String lastMessage, String smsNonLue} ){
    this.userName=userName;
    this.lastMessage=lastMessage;
    this.userImage=userImage;
    this.heure=heure;
    this.smsNonLue=smsNonLue;
  }
  
}