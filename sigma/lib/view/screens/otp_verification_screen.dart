
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pin_put/pin_put.dart';
import 'package:sigma/Resources/App_Colors.dart';

class OtpVerificationScreen extends StatelessWidget {
  final BoxDecoration pinPutDecoration = BoxDecoration(
    color: const Color.fromRGBO(119, 125, 226, 1),
    borderRadius: BorderRadius.circular(5.0),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(decoration: BoxDecoration(gradient: gradientForStart),
      child: Column(
        children: <Widget>[
      Padding(
      padding: const EdgeInsets.all(30.0),
        child: PinPut(
          fieldsCount: 4,
          withCursor: true,
          textStyle: const TextStyle(fontSize: 25.0, color: Colors.white),
          eachFieldWidth: 40.0,
          eachFieldHeight: 55.0,
          onSubmit: (String pin) => null,
          focusNode: null,
          controller: null,
          submittedFieldDecoration: pinPutDecoration,
          selectedFieldDecoration: pinPutDecoration,
          followingFieldDecoration: pinPutDecoration,
          pinAnimationType: PinAnimationType.fade,
        ),
      ),

        ],
      ),),
    );
  }
}
