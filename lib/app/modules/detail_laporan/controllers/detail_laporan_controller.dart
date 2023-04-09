import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:get/get.dart';
import 'package:open_route_service/open_route_service.dart';

class DetailLaporanController extends GetxController {
  final user = FirebaseAuth.instance.currentUser;
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  final Map arguments = Get.arguments;

  late MapController _mapController;
  List<Marker> _markers = [];

  OpenRouteService openrouteservice = OpenRouteService(
      apiKey: '5b3ce3597851110001cf6248468b96d1d3ee4ba59391bbf90e2cdd9a');

  Future<DocumentSnapshot<Object?>> getData() async {
    String docID = arguments['id'];

    DocumentReference docRef = firestore.collection("laporan").doc(docID);

    print(docRef);

    return docRef.get();
  }

  final count = 0.obs;
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

  void increment() => count.value++;
}
