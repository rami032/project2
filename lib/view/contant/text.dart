import 'package:flutter/material.dart';
Widget TextBold(String title){

  return Text(title,style: TextStyle(fontSize: 16,fontWeight:FontWeight.bold,),);


}

Widget Text1(String title,dynamic context){

  return Text(title,style: TextStyle(fontSize: 16,color:  Theme.of(context).primaryColor),);


}
