import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sigma/Resources/App_Colors.dart';
import 'package:sigma/Resources/App_ElevatedButton_style.dart';
import 'package:sigma/Resources/App_TextStyle.dart';
import 'package:sigma/Resources/App_borders.dart';
import 'package:sigma/core/ui/states/base_stateless_screen.dart';

class RegScreen extends BaseStatelessScreen {

  @override
  Widget buildBody(BuildContext context) {
    return Column(children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 77, left: 16, right: 170),
                child :Text("Создать\nаккаунт", style: style_1),
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
            padding: const EdgeInsets.only(top: 170),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Text(
                        "Нажимая кнопку “Далее”, я принимаю условия Пользовательского соглашения и Политику конфиденциальности.",
                        textAlign: TextAlign.center,
                        style: style_6),
                  ),
                ],
              ),
          ),
          Expanded(
            child: Padding(
              padding:
              const EdgeInsets.only(left: 16, right: 16, bottom: 20, top: 40),
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                  onPressed: () {},
                  style: elevatedButtonStyleStart,
                  child: Text(
                    "ДЕЛЕЕ",
                    style: style_5,
                  ),
                ),
              ),
            ),
          ),
        ]);
  }

}
