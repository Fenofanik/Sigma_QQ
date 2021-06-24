import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pinput/pin_put/pin_put.dart';
import 'package:sigma/Resources/App_TextStyle.dart';
import 'package:sigma/Resources/App_borders.dart';
import 'package:sigma/config/constant_routes.dart';
import 'package:sigma/core/services/auth_service.dart';
import 'package:sigma/core/services/user_service.dart';
import 'package:sigma/core/ui/states/base_stateless_screen.dart';

class SmsScreen extends BaseStatelessScreen{
  final String phoneNumber;
  SmsScreen({
    required this.phoneNumber
  });
  final TextEditingController _smsController = TextEditingController();

  @override
  Widget buildBody(BuildContext context){
    return Padding(
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
                          controller: _smsController,
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
                            onSubmit: (pin)async{
                              await UserService().getUser(phoneNumber);
                              AuthService().signInWithPhoneNumber(_smsController);
                              await Get.toNamed(category); //category //test
                            },
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top:40),
                          child: Text('SMS-соощение отправлено на' + '\n$phoneNumber' + '\n${'Введите код из SMS'},',
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
          );
  }

}
