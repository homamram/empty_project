import 'package:homam_p/core/data/repositories/shared_prefreance_repository.dart';
import 'package:homam_p/core/enums/message_type.dart';
import 'package:homam_p/ui/shared/custom_widgets/custom_toast.dart';
import 'package:homam_p/ui/shared/utils.dart';

import 'package:get/get.dart';

import '../../../core/utils/general_utiles.dart';

class SplashScreenController extends GetxController {
  @override
  void onInit() {
    if (storage.getOrderPlaced()) {
      //cartService.clearCart();
      storage.setOrderPlaced(false);
    }
    Future.delayed(Duration(seconds: 5)).then((value) {
      // if (storage.getFirstLunch()) {
      //   Get.off(IntroView());
      // } else {
      //   Get.off(storage.getLoggedIN() ? LandingView() : LandingView());
      // }
      // //Get.back();
      // storage.setFirstLunch(false);

      if (storage.getSubStatus()) {

      } else {
        CustomToast.showMeassge(
            message: 'Your sub expired', messageType: MessageType.WARNING);
      }
    });
    super.onInit();
  }
}
