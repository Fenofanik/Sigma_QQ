import 'package:flutter/material.dart';
import 'package:sigma/Resources/App_Colors.dart';
import 'package:sigma/Resources/App_TextStyle.dart';
import 'package:sigma/Resources/App_borders.dart';
import 'package:sigma/config/constant_routes.dart';


class MyHistory extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Container(
        decoration: BoxDecoration(gradient: gradientForStart),
        child: Padding(
          padding: const EdgeInsets.only(left: 10,right:10),
          child: Column(
            children: [
              SingleChildScrollView(
                child: Wrap(direction: Axis.vertical,
                  children: [
                    Wrap(direction: Axis.horizontal,
                      children: [
                        Padding(
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
                        Padding(
                            padding: const EdgeInsets.only(top:50,right: 19,left: 19),
                            child: IconButton(onPressed: (){
                              Navigator.pushNamed(context, filterHistory);
                            },
                                icon: Icon(Icons.filter_list,size: 18,color: whiteColors,)),
                          )
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top:20,bottom: 20,left: 16,right: 16),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: TransparentForCategory,
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: borderColor)
                  ),
                  child: TabBar(
                    controller: _tabController,
                    indicator: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(16)),
                        border: Border.all(color: borderColor)
                    ),
                    labelColor: whiteColors,
                    unselectedLabelColor: borderColor,
                    tabs: [
                      Tab(
                        text: 'Оффлайн',
                      ),
                      Tab(
                        text: 'Онлайн',
                      ),
                    ],
                  ),
                ),
              ),

             TabBarView(
                  controller: _tabController,
                  children: [
                    Wrap(direction: Axis.vertical,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 16),
                          child: Text("Сегодня",textAlign: TextAlign.left,style: TextStyles().style_10,),
                        ),
                        Container(color: whiteColors,
                            child: ListView(),
                          ),
                        Padding(
                          padding: const EdgeInsets.only(left: 16),
                          child: Text("Вчера",style: TextStyles().style_10,),
                        ),
                        Container(color: whiteColors,
                            child: ListView(),
                          ),
                      ] ,),
                    Container(),
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}

