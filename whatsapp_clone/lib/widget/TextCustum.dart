import 'package:flutter/material.dart';

class  TextCustum extends Text {
  TextCustum(String data,{double spacing,color:Colors.white,fontSize:20.0,fontWeight:FontWeight.bold,textAlign:TextAlign.justify}) : 
  super(
    data,
    textAlign:textAlign,
    style:TextStyle(
      letterSpacing: spacing,
      color:color,
      fontSize: fontSize,
      fontWeight: fontWeight,
      
    ),
    );
  
}