import 'package:get/get.dart';

import '../modules/bantuan/bindings/bantuan_binding.dart';
import '../modules/bantuan/views/bantuan_view.dart';
import '../modules/buat_laporan/bindings/buat_laporan_binding.dart';
import '../modules/buat_laporan/views/buat_laporan_view.dart';
import '../modules/chat/bindings/chat_binding.dart';
import '../modules/chat/views/chat_view.dart';
import '../modules/detail_laporan/bindings/detail_laporan_binding.dart';
import '../modules/detail_laporan/views/detail_laporan_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/kontak/bindings/kontak_binding.dart';
import '../modules/kontak/views/kontak_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/notifikasi/bindings/notifikasi_binding.dart';
import '../modules/notifikasi/views/notifikasi_view.dart';
import '../modules/pelaporan/bindings/pelaporan_binding.dart';
import '../modules/pelaporan/views/pelaporan_view.dart';
import '../modules/register/bindings/register_binding.dart';
import '../modules/register/views/register_view.dart';
import '../modules/signup/bindings/signup_binding.dart';
import '../modules/signup/views/signup_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.REGISTER,
      page: () => RegisterView(),
      binding: RegisterBinding(),
    ),
    GetPage(
      name: _Paths.SIGNUP,
      page: () => SignupView(),
      binding: SignupBinding(),
    ),
    GetPage(
      name: _Paths.BANTUAN,
      page: () => BantuanView(),
      binding: BantuanBinding(),
    ),
    GetPage(
      name: _Paths.KONTAK,
      page: () => KontakView(),
      binding: KontakBinding(),
    ),
    GetPage(
      name: _Paths.NOTIFIKASI,
      page: () => NotifikasiView(),
      binding: NotifikasiBinding(),
    ),
    GetPage(
      name: _Paths.CHAT,
      page: () => ChatView(),
      binding: ChatBinding(),
    ),
    GetPage(
      name: _Paths.PELAPORAN,
      page: () => PelaporanView(),
      binding: PelaporanBinding(),
    ),
    GetPage(
      name: _Paths.BUAT_LAPORAN,
      page: () => const BuatLaporanView(),
      binding: BuatLaporanBinding(),
    ),
    GetPage(
      name: _Paths.DETAIL_LAPORAN,
      page: () => const DetailLaporanView(),
      binding: DetailLaporanBinding(),
    ),
  ];
}
