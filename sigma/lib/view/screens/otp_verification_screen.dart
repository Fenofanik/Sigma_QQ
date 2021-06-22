import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pinput/pin_put/pin_put.dart';
import 'package:sigma/Resources/App_Colors.dart';
import 'package:sigma/Resources/App_TextStyle.dart';
import 'package:sigma/Resources/App_borders.dart';
import 'package:sigma/config/constant_routes.dart';
import 'package:sigma/core/ui/states/base_stateless_screen.dart';

class SmsScreen extends BaseStatelessScreen{

  @override
  Widget build(BuildContext context){
    return Scaffold(
        resizeToAvoidBottomInset: false,
        key: scaffoldKey,
        backgroundColor: Colors.transparent,
        body: Container(
          decoration: BoxDecoration(
              gradient: gradientForStart),
          child: Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top:77),
                  child: Text(
                    'Верификация\nномера',
                    style: style_1,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top:48),
                  child: Center(
                    child: Column(
                      children: [
                        PinPut(
                            eachFieldHeight:40,
                            eachFieldWidth: 30.0,
                            obscureText: "●",
                            animationDuration: Duration(milliseconds:300),
                            keyboardType: TextInputType.number,
                            submittedFieldDecoration: pinPutDecoration,
                            selectedFieldDecoration: selected,
                            followingFieldDecoration: pinPutDecoration,
                            pinAnimationType: PinAnimationType.rotation,
                            textStyle: style_6,
                            fieldsCount: 6,
                            withCursor: true,
                            onSubmit: (pin){
                              Get.toNamed(category);
                            },
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top:40),
                          child: Text('SMS-соощение отправлено на' + '' + '\nВведите код из SMS',
                            style: style_13, textAlign: TextAlign.center,),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top:20),
                          child: Text("Отправить повторно",style:style_4 ,),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
  }

  @override
  Widget buildBody(BuildContext context) {
    // TODO: implement buildBody
    throw UnimplementedError();
  }

}
