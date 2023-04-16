import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lapor_pak/app/routes/app_pages.dart';

import '../controllers/notifikasi_controller.dart';

class NotifikasiView extends GetView<NotifikasiController> {
  NotifikasiView({Key? key}) : super(key: key);
  NotifikasiController controller = Get.put(NotifikasiController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          title: Text("Notifikasi",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black)),
        ),
        body: Obx(() => ListView.builder(
              itemCount: controller.users.length,
              itemBuilder: (context, index) {
                final user = controller.users[index];
                return Container(
                  margin: EdgeInsets.only(right: 15, left: 15, bottom: 15),
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            spreadRadius: 3,
                            blurRadius: 9,
                            offset: Offset(0, 6) // changes position of shadow
                            ),
                      ],
                      borderRadius: BorderRadius.circular(15)),
                  child: Row(children: [
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                          color: Colors.pink.withOpacity(.1),
                          borderRadius: BorderRadius.circular(10)),
                      child: Icon(
                        Icons.message,
                        color: Colors.pink,
                        size: 30,
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [Text(user['name']), Text(user['email'])],
                    )
                  ]),
                );
                // ListTile(
                //   title: Text(user['name']),
                //   subtitle: Text(user['email']),
                // );
              },
            )),
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
