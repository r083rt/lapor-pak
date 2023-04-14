import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:lapor_pak/app/controllers/auth_controller.dart';

class UserProfileController extends GetxController {
  final user = FirebaseAuth.instance.currentUser;
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  AuthController auth = AuthController();

  Future<DocumentSnapshot<Object?>> getData() async {
    DocumentReference docRef = firestore.collection("users").doc(user!.uid);

    print(docRef);

    return docRef.get();
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
