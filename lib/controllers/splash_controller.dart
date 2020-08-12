import 'package:get/get.dart';
import 'package:piter_getx/pages/home_page.dart';

class SplashController extends GetxController {
  @override
  void onReady() {
    super.onReady();
    Future.delayed(Duration(seconds: 2), () {
      Get.off(
        HomePage(),
        transition: Transition.zoom,
        duration: Duration(milliseconds: 600),
      );
    });
  }

//  @override
//  void onClose() {
//    super.onClose();
//    print('Elimiarobs');
//  }
}
