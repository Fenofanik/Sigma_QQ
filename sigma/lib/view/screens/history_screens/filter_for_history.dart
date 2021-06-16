import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sigma/Resources/App_Colors.dart';
import 'package:sigma/Resources/App_ElevatedButton_style.dart';
import 'package:sigma/Resources/App_TextStyle.dart';
import 'package:sigma/core/ui/widgets/base_stateful_widget.dart';

class HistoryFilter extends BaseStatefulWidget {
  @override
  _HistoryFilterState createState() => _HistoryFilterState();
}

class _HistoryFilterState extends State<HistoryFilter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(gradient: gradientForStart),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Wrap(
              direction: Axis.horizontal,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 40, left: 20),
                  child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.arrow_back,
                        size: 16,
                        color: whiteColors,
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 45),
                  child: Text(
                    "Фильтр",
                    style: TextStyles().style_7,
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8, left: 16),
              child: Text(
                "Категории",
                style: TextStyles().style_10,
              ),
            ),
            Wrap(
              direction: Axis.horizontal,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 16, top: 16),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButtonStyleManager()
                        .elevatedButtonStyleCategory1,
                    child:
                        Text("Кафе и рестораны", style: TextStyles().style_6),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 16),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButtonStyleManager()
                        .elevatedButtonStyleCategory5,
                    child: Text(
                      "Маркетплейсы",
                      style: TextStyles().style_6,
                    ),
                  ),
                ),
              ],
            ),
            Wrap(
              direction: Axis.horizontal,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 16, top: 10),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButtonStyleManager()
                        .elevatedButtonStyleCategory3,
                    child: Text(
                      "Авто",
                      style: TextStyles().style_6,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 10),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButtonStyleManager()
                        .elevatedButtonStyleCategory6,
                    child: Text(
                      "Детские товары",
                      style: TextStyles().style_6,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 10, right: 29),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButtonStyleManager()
                        .elevatedButtonStyleCategory8,
                    child: Text(
                      "Техника",
                      style: TextStyles().style_6,
                    ),
                  ),
                ),
              ],
            ),
            Wrap(
              direction: Axis.horizontal,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 16, top: 10),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButtonStyleManager()
                        .elevatedButtonStyleCategory7,
                    child: Text(
                      "Одежда и Украшения",
                      style: TextStyles().style_6,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 10),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButtonStyleManager()
                        .elevatedButtonStyleCategory9,
                    child: Text(
                      "Услуги",
                      style: TextStyles().style_6,
                    ),
                  ),
                ),
              ],
            ),
            Wrap(
              direction: Axis.horizontal,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 16, top: 10),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButtonStyleManager()
                        .elevatedButtonStyleCategory2,
                    child: Text(
                      "Путешествия",
                      style: TextStyles().style_6,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 71, left: 10, top: 10),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButtonStyleManager()
                        .elevatedButtonStyleCategory4,
                    child: Text(
                      "Красота и здоровье ",
                      style: TextStyles().style_6,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, top: 10, right: 46),
              child: ElevatedButton(
                onPressed: () {},
                style:
                    ElevatedButtonStyleManager().elevatedButtonStyleCategory10,
                child: Text(
                  "Досуг и Развлечения",
                  style: TextStyles().style_6,
                ),
              ),
            ),
            Wrap(
              direction: Axis.vertical,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 30, left: 16),
                  child: Text(
                    "Расстояние",
                    style: TextStyles().style_10,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 26,top: 17),
                  child: Wrap(
                    direction: Axis.horizontal,
                    children: <Widget>[
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.radio_button_unchecked,
                            size: 20,
                            color: borderColor,
                          )),
                      Padding(
                        padding: const EdgeInsets.only(left: 10,top: 10),
                        child: Text(
                          "ближайшие",
                          style: TextStyles().style_3,
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 26),
                  child: Wrap(
                    direction: Axis.horizontal,
                    children: <Widget>[
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                              Icons.radio_button_unchecked,
                              size: 20,
                              color: borderColor
                          )),
                      Padding(
                        padding: const EdgeInsets.only(left: 10,top: 10),
                        child: Text(
                          "все",
                          style: TextStyles().style_3,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 100, left: 16, right: 16, bottom: 40),
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButtonStyleManager().elevatedButtonStyleStart,
                  child: Text(
                    "ПРИМЕНИТЬ",
                    style: TextStyles().style_11,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
