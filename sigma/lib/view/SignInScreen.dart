import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:sigma/Resources/App_Colors.dart';
import 'package:sigma/Resources/App_TextStyle.dart';
import 'package:sigma/Resources/App_borders.dart';

class SIgnInScreen extends StatefulWidget {
  @override
  _SIgnInScreenState createState() => _SIgnInScreenState();
}

class _SIgnInScreenState extends State<SIgnInScreen> {
  @override
  Widget build(BuildContext context) {
    return signInUI(context);
  }

  signInUI(context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(gradient: ColorsManager.gradientForStart),
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
                      color: ColorsManager.borderColor,
                    ),
                    hintText: "Номер телефона",
                    hintStyle: TextStyles().style_2,
                    contentPadding: const EdgeInsets.only(left: 10),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderForTextField().borders,
                        borderRadius: RadiusManager().radius),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderForTextField().borders,
                        borderRadius: RadiusManager().radius),
                    errorBorder: OutlineInputBorder(
                        borderSide: BorderForTextField().borders,
                        borderRadius: RadiusManager().radius),
                    focusedErrorBorder: OutlineInputBorder(
                        borderSide: BorderForTextField().borders,
                        borderRadius: RadiusManager().radius),
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
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      shape: ShapeButtonManager().shape,
                      fixedSize: const Size(328, 44),
                      primary: ColorsManager.whiteColors,
                    ),
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