import 'package:flutter/material.dart';
import 'package:accordion/accordion.dart';
import 'package:accordion/controllers.dart';
import 'package:get/get.dart';

import '../controllers/bantuan_controller.dart';

class BantuanView extends GetView<BantuanController> {
  const BantuanView({Key? key}) : super(key: key);

  final disdukCapilContent =
      '''Menu Disdukcapil berisi Informasi lengkap mengenai layanan dan syarat yang dibutuhkan saat mengurus keperluaan anda di Disduk Capil, selain itu juga terdapat Informasi mengenai Alamat Kantor Disduk Capil Kota Kendari berdasarkan Maps.\nCaranya :\n1.Klik Pilih Layanan\n2.Pilih layanan yang Anda inginkan\n3.Lalu akan tertera informasi lengkap tentang layanan yang Anda butuhkan di Disduk Capil''';
  final _contentStyle = const TextStyle(
      height: 1.4,
      color: Colors.black54,
      fontSize: 17,
      fontWeight: FontWeight.normal);

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
              "Bantuan",
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 30),
            ),
          ),
          Accordion(
              maxOpenSections: 1,
              headerBackgroundColorOpened: Colors.black54,
              scaleWhenAnimating: true,
              openAndCloseAnimation: true,
              headerPadding: const EdgeInsets.all(20),
              sectionOpeningHapticFeedback: SectionHapticFeedback.heavy,
              sectionClosingHapticFeedback: SectionHapticFeedback.light,
              children: [
                AccordionSection(
                  isOpen: true,
                  headerBackgroundColor: Colors.black12,
                  headerBackgroundColorOpened: Colors.black12,
                  header: Text('Menu DisdukCapil',
                      style: TextStyle(
                          color: Colors.black54,
                          fontSize: 17,
                          fontWeight: FontWeight.bold)),
                  content: Text(disdukCapilContent, style: _contentStyle),
                  contentVerticalPadding: 25,
                  contentHorizontalPadding: 25,
                  contentBorderWidth: 1,
                  contentBorderColor: Colors.black12,
                ),
                AccordionSection(
                  isOpen: true,
                  headerBackgroundColor: Colors.black12,
                  headerBackgroundColorOpened: Colors.black12,
                  header: Text('Menu Pelaporan',
                      style: TextStyle(
                          color: Colors.black54,
                          fontSize: 17,
                          fontWeight: FontWeight.bold)),
                  content: Text(disdukCapilContent, style: _contentStyle),
                  contentVerticalPadding: 25,
                  contentHorizontalPadding: 25,
                  contentBorderWidth: 1,
                  contentBorderColor: Colors.black12,
                ),
                AccordionSection(
                  isOpen: true,
                  headerBackgroundColor: Colors.black12,
                  headerBackgroundColorOpened: Colors.black12,
                  header: Text('DIMAS (Diskusi Masyarakat)',
                      style: TextStyle(
                          color: Colors.black54,
                          fontSize: 17,
                          fontWeight: FontWeight.bold)),
                  content: Text(disdukCapilContent, style: _contentStyle),
                  contentVerticalPadding: 25,
                  contentHorizontalPadding: 25,
                  contentBorderWidth: 1,
                  contentBorderColor: Colors.black12,
                ),
                AccordionSection(
                  isOpen: true,
                  headerBackgroundColor: Colors.black12,
                  headerBackgroundColorOpened: Colors.black12,
                  header: Text('News Lapor Pak!',
                      style: TextStyle(
                          color: Colors.black54,
                          fontSize: 17,
                          fontWeight: FontWeight.bold)),
                  content: Text(disdukCapilContent, style: _contentStyle),
                  contentVerticalPadding: 25,
                  contentHorizontalPadding: 25,
                  contentBorderWidth: 1,
                  contentBorderColor: Colors.black12,
                ),
              ]),
        ],
      ),
    )));
  }
}
