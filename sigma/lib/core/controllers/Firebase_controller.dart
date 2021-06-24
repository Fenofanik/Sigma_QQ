import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class FirebaseController extends GetxController{

  FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;

  final CollectionReference categoryRef =
  FirebaseFirestore.instance.collection("categories");

  final CollectionReference productRef =
  FirebaseFirestore.instance.collection("Products");

  final CollectionReference companyRef =
  FirebaseFirestore.instance.collection("Company");

  final CollectionReference usersRef =
  FirebaseFirestore.instance.collection("users");



  @override
  void onInit() {
    super.onInit();
    getUser();
  }

  getUserId() {
    return firebaseAuth.currentUser!.uid;
  }

  getUser() {
    final userId = firebaseAuth.currentUser!.uid;
    return usersRef.doc(userId);
  }

  getUserCategory() async {
    final user = await getUser().get();
    return List<String>.from(user['Category']);
  }

  updateUserCategory(String categoryId, List<String> existingCategory) async {
    final existingCategory = await getUserCategory();
    List<String> newCategory = [];
    if (existingCategory.contains(categoryId)) {
      newCategory = existingCategory.where((x) => x != categoryId).toList();
    } else {
      newCategory = [...existingCategory, ...[categoryId]];
    }
    await usersRef.doc(getUserId()).update({'Category': newCategory});
  }









}