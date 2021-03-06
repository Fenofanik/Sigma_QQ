import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:sigma/Resources/App_Colors.dart';
import 'package:sigma/Resources/App_ElevatedButton_style.dart';
import 'package:sigma/Resources/App_TextStyle.dart';
import 'package:sigma/Resources/App_borders.dart';
import 'package:sigma/config/constant_routes.dart';
import 'package:sigma/core/services/auth_service.dart';
import 'package:sigma/core/ui/states/base_stateless_screen.dart';

import 'otp_verification_screen.dart';

class SignInScreen extends BaseStatelessScreen {
  final TextEditingController phoneNumberController = TextEditingController();

  @override
  Widget buildBody(BuildContext context) {
    return Column(children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 70, left: 16, right: 150),
            child: Column(
              children: [
                Text("Войти\nв аккаунт", style: style_1),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16, top: 61),
            child: TextFormField(
              controller: phoneNumberController,
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.phone_outlined,
                  size: 18,
                  color: borderColor,
                ),
                hintText: "Номер телефона",
                hintStyle: style_2,
                contentPadding: const EdgeInsets.only(left: 10),
                enabledBorder: styleForBorder,
                focusedBorder: styleForBorder,
                errorBorder: styleForBorder,
                focusedErrorBorder: styleForBorder,
              ),
              keyboardType: TextInputType.phone,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 215),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Нет аккаунта? ",
                  style: style_3,
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, reg);
                  },
                  child:
                  Text("Зарегистрироваться", style: style_4),
                )
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 16, right: 16, bottom: 20, top: 50),
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                  onPressed: () {
                    Get.to(SmsScreen(phoneNumber: phoneNumberController.text,));
                    AuthService().verifyPhoneNumber(phoneNumberController);
                  },
                  style: elevatedButtonStyleStart,
                  child: Text(
                    "ВОЙТИ",
                    style: style_5,
                  ),
                ),
              ),
            ),
          ),
        ]);
  }

}

