import 'package:flutter/material.dart';
import 'package:sigma/Resources/App_Colors.dart';
import 'package:sigma/Resources/App_TextStyle.dart';
import 'package:sigma/Resources/App_borders.dart';
import 'package:sigma/config/constant_routes.dart';
import 'package:sigma/core/controllers/my_history_controller.dart';
import 'package:get/get.dart';

class MyHistory extends StatelessWidget {
  final MyHistoryTabController _tabs = Get.put(MyHistoryTabController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(gradient: gradientForStart),
        child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Column(
            children: [
              Row(
                      children: [
                        Expanded(flex: 4,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 16, top: 40),
                            child: TextFormField(
                              decoration: InputDecoration(
                                fillColor: ForSearchField,
                                filled: true,
                                prefixIcon: Icon(Icons.search,
                                    size: 18, color: SearchIcon),
                                hintText: "Поиск",
                                hintStyle: TextStyles().style_2,
                                contentPadding: const EdgeInsets.only(left: 10),
                                enabledBorder:
                                    OutlineInputBorders().styleForSearchBorder,
                                focusedBorder:
                                    OutlineInputBorders().styleForSearchBorder,
                                errorBorder:
                                    OutlineInputBorders().styleForSearchBorder,
                                focusedErrorBorder:
                                    OutlineInputBorders().styleForSearchBorder,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 50, right: 19, left: 19),
                            child: IconButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, filterHistory);
                                },
                                icon: Icon(
                                  Icons.filter_list,
                                  size: 18,
                                  color: whiteColors,
                                )),
                          ),
                        )
                      ],
                    ),

              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 20, bottom: 20, left: 16, right: 16),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: TransparentForCategory,
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(color: borderColor)),
                    child: TabBar(
                      controller: _tabs.controller,
                      indicator: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(16)),
                          border: Border.all(color: borderColor)),
                      labelColor: whiteColors,
                      unselectedLabelColor: borderColor,
                      tabs: _tabs.myTabs,
                    ),
                  ),
                ),
              ),
              Expanded(flex: 6,
                child: TabBarView(
                  controller: _tabs.controller,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 6,top: 20,bottom: 16),
                          child: Text("Сегодня",textAlign: TextAlign.left,style: TextStyles().style_10,),
                        ),
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              color: whiteColors,
                              borderRadius: BorderRadius.all(Radius.circular(8)),
                            ),

                            child: ListView(),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 6,top: 20,bottom: 16),
                          child: Text("Вчера",style: TextStyles().style_10,),
                        ),
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              color: whiteColors,
                              borderRadius: BorderRadius.all(Radius.circular(8)),
                            ),
                            child: ListView(),
                          ),
                        ),
                      ] ,),
                    Container(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  forNoHistUI(){
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
