import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import 'package:homam_p/ui/shared/colors.dart';
import 'package:get/get.dart';



double screenWidth(double perecent) {
  if (GetPlatform.isMobile)
    return Get.width / perecent;
  else
    return Get.height / perecent;
}

double screenHeight(double perecent) {
  if (GetPlatform.isMobile)
    return Get.height / perecent;
  else
    return Get.width / perecent;
}



void customLoader() => BotToast.showCustomLoading(toastBuilder: (builder) {
      return Container(
        width: screenWidth(5),
        height: screenWidth(5),
        decoration: BoxDecoration(
            color: AppColors.mainBlackColor.withOpacity(0.5),
            borderRadius: BorderRadius.circular(15)),
        child: SpinKitCircle(color: AppColors.mainOrangeColor),
      );
    });



