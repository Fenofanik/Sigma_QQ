import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:sigma/Resources/App_Colors.dart';
import 'package:sigma/view/screens/history_screens/My_History_main.dart';


class MainBottomNavigationBar extends StatelessWidget{
  final NavController navController = Get.put(NavController());

  final List<Widget> bodyContent = [
    Text('1'),
    MyHistoryMain(),
    Text('3'),
    Text('4'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => Center(
          child: bodyContent.elementAt(navController.selectedIndex),
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
              currentIndex: navController.selectedIndex,
              onTap: (index) => navController.selectedIndex = index,
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
}
class NavController extends GetxController {
  final _selectedIndex = 0.obs;

  get selectedIndex => _selectedIndex.value;
  set selectedIndex(index) => _selectedIndex.value = index;
}