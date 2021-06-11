import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sigma/Resources/App_Colors.dart';
import 'package:sigma/Resources/App_TextStyle.dart';
import 'package:sigma/Resources/App_borders.dart';

class RegScreen extends StatefulWidget {
  @override
  _RegScreenState createState() => _RegScreenState();
}

class _RegScreenState extends State<RegScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.backgroundColor,
      body: regUI(context),
    );
  }

  regUI(context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: BoxDecoration(gradient: ColorsManager.gradientForStart),
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
              padding: const EdgeInsets.only(top: 190),
              child: InkWell(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                       Expanded(
                         child: Text(
                            "Нажимая кнопку “Далее”, я принимаю условия Пользовательского соглашения и Политику конфиденциальности.",
                            textAlign: TextAlign.center,
                            style: TextStyles().style_3),
                       ),

                  ],
                ),
              ),
            ),
           Padding(
              padding:
                  const EdgeInsets.only(left: 16, right: 16, bottom: 20, top: 40),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  shape: ShapeButtonManager().shape,
                  fixedSize: Size(328, 44),
                  primary: ColorsManager.whiteColors,
                ),
                child: Text(
                  "ДЕЛЕЕ",
                  style: TextStyles().style_5,
                ),
              ),
            ),
        ]),
      ),
    );
  }
}
