import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/buat_laporan_controller.dart';

class BuatLaporanView extends GetView<BuatLaporanController> {
  const BuatLaporanView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          Container(
            width: Get.width,
            margin: EdgeInsets.fromLTRB(0, 40, 0, 20),
            child: Text(
              "Buat Laporan",
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 30),
            ),
          ),
          Container(
            width: Get.width,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.black12),
            child: TextField(
              controller: controller.kategoriC,
              decoration: InputDecoration(
                labelStyle: TextStyle(fontSize: 13.0),
                hintStyle: TextStyle(fontSize: 11.0),
                border: InputBorder.none,
                hintText: 'Jenis Kerusakan',
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
              ),
            ),
          ),
          SizedBox(height: 15),
          Container(
            width: Get.width,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.black12),
            child: TextField(
              controller: controller.keteranganC,
              decoration: InputDecoration(
                labelStyle: TextStyle(fontSize: 13.0),
                hintStyle: TextStyle(fontSize: 11.0),
                border: InputBorder.none,
                hintText: 'Keterangan Laporan ',
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
              ),
            ),
          ),
          SizedBox(height: 15),
          Container(
            width: Get.width,
            height: 120,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.black12),
            child: TextField(
              controller: controller.lokasiC,
              decoration: InputDecoration(
                labelStyle: TextStyle(fontSize: 13.0),
                hintStyle: TextStyle(fontSize: 11.0),
                border: InputBorder.none,
                hintText:
                    'Lokasi Kerusakan (isi dengan alamat, jalan, nomor dan sebagainya)',
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
              ),
            ),
          ),
          SizedBox(height: 15),
          Container(
              width: Get.width,
              height: 300,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.black12),
              child: Obx(() => controller.image.value != null
                  ? InkWell(
                      onTap: () async {
                        await controller.getImage();
                      },
                      child: Container(
                        width: Get.width,
                        height: 300,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20)),
                        child: Image.file(
                          controller.image.value!,
                          fit: BoxFit.cover,
                        ),
                      ),
                    )
                  : InkWell(
                      onTap: () async {
                        await controller.getImage();
                      },
                      child: Center(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.camera_alt,
                            size: 30,
                          ),
                          SizedBox(height: 5),
                          Text("Ambil foto")
                        ],
                      )),
                    ))),
          SizedBox(height: 15),
          SizedBox(
            width: Get.width,
            child: ElevatedButton(
              onPressed: () async {
                await controller.sendLaporan();
              },
              child: Text("Kirim Laporan"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xff1A669D),
              ),
            ),
          )
        ],
      ),
    )));
  }
}
