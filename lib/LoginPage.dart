import 'package:flutter/material.dart';
import 'helpers/Constants.dart';

//1'

class LoginPage extends StatelessWidget{
  //2
  final _pinCodeController = TextEditingController();

  //3
  @override
  Widget build(BuildContext context) {
 
    //3a
    final logo = CircleAvatar(
      backgroundColor: Colors.transparent,
      radius: bigRadius,
      child: appLogo,
    );
    //3b
    final pinCode = TextFormField(
      controller: _pinCodeController,
      keyboardType: TextInputType.text,
      maxLength: 4,
      maxLines: 1,
      autofocus: true,
      decoration: InputDecoration(
        hintText: pinCodeHintText,
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32.0),
        ),
        hintStyle: TextStyle(
          color: Colors.white
        )//TextStyle
      ),//InputDecoration
      style: TextStyle(
        color: Colors.white
      ),//TextStyle 2
    ); //TextFormField

    //3c
    final loginButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),//RoundRectangleBorder
        onPressed: () {},
        padding: EdgeInsets.all(12),
        color: appGreyColor,
        child: Text(loginButtonText, style: TextStyle(color: Colors.white)),
      ),//RaisedButton
    );//Padding

    //3d

    return Scaffold(
      backgroundColor: appDarkGreyColor,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[
            logo,
            SizedBox(height: bigRadius),
            pinCode,
            SizedBox(height: buttonHeight),
            loginButton
          ], //Widget Child
        ), //ListView
      ), //Center
    ); //Scafold

  } //Widget

} //fin Class