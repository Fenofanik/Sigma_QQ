import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:sigma/Resources/App_Colors.dart';
import 'package:sigma/core/controllers/bottom_bar_controller.dart';
import 'package:sigma/core/ui/states/base_stateless_screen.dart';


class MainBottomNavigationBar extends BaseStatelessScreen{
  final BottomBarController bottomBarController = Get.put(BottomBarController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      body: Obx(() => Center(
          child: bottomBarController.bodyContent.elementAt(bottomBarController.selectedIndex),
        ),
      ),
      floatingActionButton: Container(
        child: FloatingActionButton(
          backgroundColor: FloatAcButton,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Icon(Icons.qr_code, size: 30,),
          ),
          onPressed: () {},
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: Obx(() => Padding(
          padding: EdgeInsets.only(bottom: 0),
          child: BottomNavigationBar(
              backgroundColor: bottomBar,
              selectedItemColor:unselectedBottomIcon,
              unselectedItemColor: selectedBottomIcon,
              currentIndex: bottomBarController.selectedIndex,
              onTap: (index) => bottomBarController.selectedIndex = index,
              type: BottomNavigationBarType.fixed,
              iconSize: 25,
              items: [
                BottomNavigationBarItem(
                    icon: Icon(Icons.home),
                    label: 'Главная'
                ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.history),
                    label: 'История'
                ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.location_on_outlined),
                    label: 'Карта'
                ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.menu),
                    label: 'Еще'
                ),
              ]
          ),
        ),
      ),
    );
  }

  @override
  Widget buildBody(BuildContext context) {
    // TODO: implement buildBody
    throw UnimplementedError();
  }


}