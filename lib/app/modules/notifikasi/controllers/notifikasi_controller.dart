import 'dart:convert';

import 'package:get/get.dart';

class NotifikasiController extends GetxController {
  RxList users = [].obs;

  void fetchUsers() async {
    final jsonString = '''
      [
        {
          "id": 1,
          "name": "John Doe",
          "email": "johndoe@example.com"
        },
        {
          "id": 2,
          "name": "Jane Doe",
          "email": "janedoe@example.com"
        },
        {
          "id": 3,
          "name": "Bob Smith",
          "email": "bobsmith@example.com"
        }
      ]
    ''';

    final List<dynamic> jsonList = json.decode(jsonString);
    users.assignAll(jsonList);
  }

  final count = 0.obs;
  @override
  void onInit() {
    fetchUsers();
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
