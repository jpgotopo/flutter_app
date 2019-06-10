import 'package:flutter/material.dart';
import 'LoginPage.dart';
import 'helpers/Constants.dart';

void main() => runApp(ContactlyApp());

class ContactlyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appTitle,
      theme: new ThemeData(
        primaryColor: appDarkGreyColor,
      ), //ThemeData
      home: LoginPage() // just added
    );//Material App
  }//B  uild
}// Fin class