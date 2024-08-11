import 'package:get/get.dart';
import 'package:gif_skill/routes.dart';

class SplashController extends GetxController {
  @override
  void onReady() {
    super.onReady();
    checkLogged();
  }

  Future<void> checkLogged() async {
    Get.offAllNamed(AppRoute.homeScreen);
  }
}
