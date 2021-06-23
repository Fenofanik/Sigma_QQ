import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sigma/Resources/App_Colors.dart';
import 'package:sigma/core/controllers/Firebase_controller.dart';
import 'package:sigma/core/ui/states/base_stateless_screen.dart';


class MainScreen extends BaseStatelessScreen{
  final FirebaseController firebaseController = Get.put(FirebaseController());

  @override
  Widget buildBody(BuildContext context) {
    return FutureBuilder<QuerySnapshot>(
      future: firebaseController.categoryRef.get(),
      builder: ( context, categorySnapshot) {
                  return StreamBuilder<QuerySnapshot>(
                      stream: firebaseController.usersRef.snapshots(),
                      builder: (context,usersSnapshot){
                        if (usersSnapshot.hasError) {
                          return Scaffold(
                            key: scaffoldKey,
                            body: Container(
                              decoration: BoxDecoration(gradient: gradientForStart),
                              child: Center(
                                child: Text("Error: ${usersSnapshot.error}"),
                              ),
                            ),
                          );
                        }
                        if (usersSnapshot.connectionState == ConnectionState.active &&
                            categorySnapshot.connectionState == ConnectionState.done)
                        {
                          final userId = firebaseController.getUserId();
                          final user = usersSnapshot.data!.docs.firstWhere((element) {
                            return element['id'] == userId;
                          });
                          final userCategory = List<String>.from(user['category']);

                          final productsData = categorySnapshot.data!.docs.where((element) {
                            final id = element['id'].toString().trim();
                            return userCategory.contains(id);
                          });
                          return ListView(
                            children: productsData.map((document) {
                              return mainUI(context, document, userCategory);
                            }).toList(),
                          );
                        }
                        return Scaffold(
                          key: scaffoldKey,
                          backgroundColor: redColors,
                          body: Center(
                            child: CircularProgressIndicator(),
                          ),
                        );
                      });
                  });
  }
  Widget mainUI (BuildContext context, DocumentSnapshot document,
      List<String> category){
    final myCategory = category.contains(document.id.trim());

    return Container(child: Column(children: [
      myCategory?Text(document['CategoryName']):Text("Whoops"),
    ],),);

  }


  @override
  PreferredSizeWidget? buildAppBar(BuildContext context) {
    // TODO: implement buildAppBar
    throw UnimplementedError();
  }

}