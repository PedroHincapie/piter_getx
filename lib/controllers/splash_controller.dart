import 'package:get/get.dart';
import 'package:piter_getx/pages/home_page.dart';

class SplashController extends GetxController {
  @override
  void onReady() {
    super.onReady();
    Future.delayed(Duration(seconds: 3), () {
      Get.to(
        HomePage(),
        transition: Transition.zoom,
        duration: Duration(seconds: 2)
      );
    });
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }
}
