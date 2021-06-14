import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:sigma/Resources/App_Colors.dart';
import 'package:sigma/Resources/App_ElevatedButton_style.dart';
import 'package:sigma/Resources/App_TextStyle.dart';
import 'package:sigma/Resources/App_borders.dart';

class SignInScreen extends StatefulWidget {
  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return signInUI(context);
  }

  signInUI(context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(gradient: gradientForStart),
        child:
          Column(children: <Widget>[
            Padding(
                padding: const EdgeInsets.only(top: 70, left: 16, right: 150),
                child: Column(
                  children: [
                    Text("Войти\nв аккаунт", style: TextStyles().style_1),
                  ],
                ),
              ),
            Padding(
                padding: const EdgeInsets.only(left: 16, right: 16, top: 61),
                child: TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.phone_outlined,
                      size: 18,
                      color: borderColor,
                    ),
                    hintText: "Номер телефона",
                    hintStyle: TextStyles().style_2,
                    contentPadding: const EdgeInsets.only(left: 10),
                    enabledBorder: OutlineInputBorders().styleForBorder,
                    focusedBorder: OutlineInputBorders().styleForBorder,
                    errorBorder: OutlineInputBorders().styleForBorder,
                    focusedErrorBorder: OutlineInputBorders().styleForBorder,
                  ),
                  keyboardType: TextInputType.phone,
                ),
              ),
            Padding(
                padding: const EdgeInsets.only(top: 225),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Нет аккаунта? ",
                      style: TextStyles().style_3,
                    ),
                    InkWell(
                      onTap: () {
                        Get.toNamed('/Reg');
                      },
                      child:
                          Text("Зарегистрироваться", style: TextStyles().style_4),
                    )
                  ],
                ),
              ),
            Padding(
                  padding: const EdgeInsets.only(
                      left: 16, right: 16, bottom: 20, top: 50),
                  child: ElevatedButton(
                    onPressed: () {
                      Get.toNamed('/CategorySelection');
                    },
                    style: ElevatedButtonStyleManager().elevatedButtonStyleStart,
                    child: Text(
                      "ВОЙТИ",
                      style: TextStyles().style_5,
                    ),
                  ),
                ),
          ]),

      ),
    );
  }
}
