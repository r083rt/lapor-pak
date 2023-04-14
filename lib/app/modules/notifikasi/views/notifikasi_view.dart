import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lapor_pak/app/routes/app_pages.dart';

import '../controllers/notifikasi_controller.dart';

class NotifikasiView extends GetView<NotifikasiController> {
  const NotifikasiView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('NotifikasiView'),
          centerTitle: true,
        ),
        body: const Center(
          child: Text(
            'NotifikasiView is working',
            style: TextStyle(fontSize: 20),
          ),
        ),
        bottomNavigationBar: ConvexAppBar(
          initialActiveIndex: 4,
          backgroundColor: Color(0xff1A669D),
          items: [
            TabItem(icon: Icons.home, title: 'Home'),
            TabItem(icon: Icons.help_center, title: 'Bantuan'),
            TabItem(icon: Icons.campaign, title: 'Lapor'),
            TabItem(icon: Icons.phone, title: 'Kontak'),
            TabItem(icon: Icons.notifications, title: 'Notifikasi'),
          ],
          onTap: (int i) {
            print('click index=$i');
            if (i == 0) {
              Get.toNamed(Routes.HOME);
            } else if (i == 1) {
              Get.toNamed(Routes.BANTUAN);
            } else if (i == 2) {
              Get.toNamed(Routes.PELAPORAN);
            } else if (i == 3) {
              Get.toNamed(Routes.KONTAK);
            } else if (i == 4) {
              Get.toNamed(Routes.NOTIFIKASI);
            }
          },
        ));
  }
}
