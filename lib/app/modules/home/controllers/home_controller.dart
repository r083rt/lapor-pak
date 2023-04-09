import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class HomeController extends GetxController {
  final searchC = TextEditingController();
  final user = FirebaseAuth.instance.currentUser;
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  GetStorage box = GetStorage();

  void saveState(String nama) {
    box.write('nama', nama);
  }

  Future<DocumentSnapshot<Object?>> getData() async {
    DocumentReference docRef = firestore.collection("users").doc(user!.uid);

    print(docRef);

    return docRef.get();
  }

  @override
  void onInit() async {
    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      LocationPermission permission = await Geolocator.requestPermission();
    }
    print(permission);
    super.onInit();
  }
}
