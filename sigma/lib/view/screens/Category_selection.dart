import 'package:flutter/material.dart';
import 'package:sigma/Resources/App_Colors.dart';
import 'package:sigma/Resources/App_ElevatedButton_style.dart';
import 'package:sigma/Resources/App_TextStyle.dart';
import 'package:sigma/core/ui/widgets/base_stateful_widget.dart';


class CategorySelection extends BaseStatefulWidget {
  CategorySelection() : super();

  @override
  _CategorySelectionState createState() => _CategorySelectionState();
}

class _CategorySelectionState extends State<CategorySelection> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery
            .of(context)
            .size
            .width,
        height: MediaQuery
            .of(context)
            .size
            .height,
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
                        Icons.arrow_back, size: 16, color: whiteColors,)),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 45),
                  child: Text(
                    "Давайте знакомиться", style: TextStyles().style_7,),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8, left: 16),
              child: Text("Выберите категории, которые вам интересны",
                style: TextStyles().style_6,),
            ),
            Wrap(
              direction: Axis.horizontal,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 16, top: 50),
                  child: ElevatedButton(onPressed: () {},
                    style: ElevatedButtonStyleManager()
                        .elevatedButtonStyleCategory1,
                    child: Text(
                        "Кафе и рестораны", style: TextStyles().style_6),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 16, left: 10, top: 50),
                  child: ElevatedButton(onPressed: () {},
                    style: ElevatedButtonStyleManager()
                        .elevatedButtonStyleCategory2,
                    child: Text("Путешествия", style: TextStyles().style_6,),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 16),
              child: Wrap(
                direction: Axis.horizontal,
                children: <Widget>[
                  ElevatedButton(onPressed: () {},
                    style: ElevatedButtonStyleManager()
                        .elevatedButtonStyleCategory3,
                    child: Text("Авто", style: TextStyles().style_6,),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 71, left: 10),
                    child: ElevatedButton(onPressed: () {},
                      style: ElevatedButtonStyleManager()
                          .elevatedButtonStyleCategory4,
                      child: Text(
                        "Красота и здоровье ", style: TextStyles().style_6,),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 16),
              child: Wrap(
                direction: Axis.horizontal,
                children: <Widget>[
                  ElevatedButton(onPressed: () {},
                    style: ElevatedButtonStyleManager()
                        .elevatedButtonStyleCategory5,
                    child: Text("Маркетплейсы", style: TextStyles().style_6,),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 19),
                    child: ElevatedButton(onPressed: () {},
                      style: ElevatedButtonStyleManager()
                          .elevatedButtonStyleCategory6,
                      child: Text(
                        "Детские товары", style: TextStyles().style_6,),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 16),
              child: Wrap(
                direction: Axis.horizontal,
                children: <Widget>[
                  ElevatedButton(onPressed: () {},
                    style: ElevatedButtonStyleManager()
                        .elevatedButtonStyleCategory7,
                    child: Text(
                      "Одежда и Украшения", style: TextStyles().style_6,),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 29),
                    child: ElevatedButton(onPressed: () {},
                      style: ElevatedButtonStyleManager()
                          .elevatedButtonStyleCategory8,
                      child: Text("Техника", style: TextStyles().style_6,),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 16),
              child: Wrap(
                direction: Axis.horizontal,
                children: <Widget>[
                  ElevatedButton(onPressed: () {},
                    style: ElevatedButtonStyleManager()
                        .elevatedButtonStyleCategory9,
                    child: Text("Услуги", style: TextStyles().style_6,),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 46),
                    child: ElevatedButton(onPressed: () {},
                      style: ElevatedButtonStyleManager()
                          .elevatedButtonStyleCategory10,
                      child: Text(
                        "Досуг и Развлечения", style: TextStyles().style_6,),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 26, right: 14, top: 30),
              child: Wrap(
                children: <Widget>[
                  IconButton(onPressed: () {

                  },
                      icon: Icon(Icons.check_box_outline_blank, size: 20,
                          color: CategoryButton1)),
                  Padding(
                    padding: const EdgeInsets.only(left: 10,top: 12),
                    child: Text("Выбрать все", style: TextStyles().style_3,),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 100, left: 16, right: 16, bottom: 40),
              child: Container(
                width: MediaQuery
                    .of(context)
                    .size
                    .width,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButtonStyleManager().elevatedButtonStyleStart2,
                  child: Text(
                    "ДЕЛЕЕ",
                    style: TextStyles().style_8,
                  ),
                ),
              ),
            )

          ],),
      ),
    );
  }
}
