import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sigma/Resources/App_Colors.dart';
import 'package:sigma/Resources/App_ElevatedButton_style.dart';
import 'package:sigma/Resources/App_TextStyle.dart';
import 'package:sigma/Resources/App_borders.dart';

class RegScreen extends StatefulWidget {
  @override
  _RegScreenState createState() => _RegScreenState();
}

class _RegScreenState extends State<RegScreen> {
  @override
  Widget build(BuildContext context) {
    return regUI(context);
  }

  regUI(context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: BoxDecoration(gradient: gradientForStart),
        child: Column(children: <Widget>[
          Padding(
              padding: const EdgeInsets.only(top: 77, left: 16, right: 170),
              child: Column(
                children: [
                  Text("Создать\nаккаунт", style: TextStyles().style_1),
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
              padding: const EdgeInsets.only(top: 190),
              child: InkWell(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                       Expanded(
                         child: Text(
                            "Нажимая кнопку “Далее”, я принимаю условия Пользовательского соглашения и Политику конфиденциальности.",
                            textAlign: TextAlign.center,
                            style: TextStyles().style_6),
                       ),

                  ],
                ),
              ),
            ),
           Padding(
              padding:
                  const EdgeInsets.only(left: 16, right: 16, bottom: 20, top: 40),
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButtonStyleManager().elevatedButtonStyleStart,
                  child: Text(
                    "ДЕЛЕЕ",
                    style: TextStyles().style_5,
                  ),
                ),
              ),
            ),
        ]),
      ),
    );
  }
}
