import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../view/login.dart';
import '../view/loginnew.dart';

class CommonDialog
{

static buildPopup(BuildContext context,String successmessage) {
 if (successmessage == "Your Session has expired .Please Log In Again") {
  return new AlertDialog(
   title: Text(successmessage),

   actions: <Widget>[
    new ElevatedButton(
     onPressed: () {

      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const LoginScreen()));
     },

     child: const Text('Ok'),
    ),
   ],
  );
 }

 else {
  return new AlertDialog(
   title: Text(successmessage),

   actions: <Widget>[
    new ElevatedButton(
     onPressed: () {
      Navigator.of(context).pop();
     },

     child: const Text('Close'),
    ),
   ],
  );
 }
}


}