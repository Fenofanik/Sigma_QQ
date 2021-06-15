import 'package:flutter/material.dart';
import 'package:sigma/Resources/App_Colors.dart';
import 'package:sigma/Resources/App_TextStyle.dart';
import 'package:sigma/Resources/App_borders.dart';


class MyHistory extends StatefulWidget {
  const MyHistory({Key? key}) : super(key: key);

  @override
  _MyHistoryState createState() => _MyHistoryState();
}

class _MyHistoryState extends State<MyHistory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(gradient: gradientForStart),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(flex:4,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16,top: 40),
                    child: TextFormField(
                      decoration: InputDecoration(
                        fillColor: ForSearchField,
                        filled: true,
                        prefixIcon: Icon(
                          Icons.search,size: 18,color: SearchIcon),
                        hintText: "Поиск",
                        hintStyle: TextStyles().style_2,
                        contentPadding: const EdgeInsets.only(left: 10),
                        enabledBorder: OutlineInputBorders().styleForSearchBorder,
                        focusedBorder: OutlineInputBorders().styleForSearchBorder,
                        errorBorder: OutlineInputBorders().styleForSearchBorder,
                        focusedErrorBorder: OutlineInputBorders().styleForSearchBorder,

                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(top:50,right: 19,left: 19),
                    child: IconButton(onPressed: (){},
                        icon: Icon(Icons.filter_list,size: 18,color: whiteColors,)),
                  ),
                )
              ],
            ),
            Expanded(child: Image.asset('assets/3x/NoHistory.png',height: 172,width: 139.35)),
            Expanded(child: Text("У вас еще нет заказов",style: TextStyles().style_9)),
          ],
        ),
      ),
    );
  }
}
