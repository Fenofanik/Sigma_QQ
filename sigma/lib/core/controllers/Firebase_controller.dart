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
    return List<String>.from(user['category']);
  }
  getUserCompany() async {
    final user = await getUser().get();
    return List<String>.from(user['Company']);
  }
  getUserProducts() async {
    final user = await getUser().get();
    return List<String>.from(user['Products']);
  }

  updateUserCategory(String productId, List<String> existingCategory) async {
    final existingCategory = await getUserCategory();
    List<String> newCategory = [];
    if (existingCategory.contains(productId)) {
      newCategory = existingCategory.where((x) => x != productId).toList();
    } else {
      newCategory = [...existingCategory, ...[productId]];
    }
    await usersRef.doc(getUserId()).update({'category': newCategory});
  }
  updateUserCompany(String productId, List<String> existingCompany) async {
    final existingCompany = await getUserCompany();
    List<String> newCompany = [];
    if (existingCompany.contains(productId)) {
      newCompany = existingCompany.where((x) => x != productId).toList();
    } else {
      newCompany = [...existingCompany, ...[productId]];
    }
    await usersRef.doc(getUserId()).update({'Company': newCompany});
  }
  updateUserProducts(String productId, List<String> existingProducts) async {
    final existingProducts = await getUserProducts();
    List<String> newProducts = [];
    if (existingProducts.contains(productId)) {
      newProducts = existingProducts.where((x) => x != productId).toList();
    } else {
      newProducts = [...existingProducts, ...[productId]];
    }
    await usersRef.doc(getUserId()).update({'Products': newProducts});
  }






}