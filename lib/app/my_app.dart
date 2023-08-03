import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:homam_p/app/my_app_controller.dart';
import 'package:homam_p/core/data/repositories/shared_prefreance_repository.dart';
import 'package:homam_p/core/enums/connectivity_status.dart';
import 'package:homam_p/core/services/connectivity_service.dart';
import 'package:homam_p/core/translation/app_translation.dart';
import 'package:homam_p/ui/shared/utils.dart';
import 'package:homam_p/ui/views/splash_screen/splash_screen_view.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import '../core/utils/general_utiles.dart';

class MyApp extends StatelessWidget {
  MyApp({super.key});

  

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StreamProvider(
        create: (context) =>
            connectivityService.connectivityStatusController.stream,
        initialData: ConnectivityStatus.ONLINE,
        child: GetMaterialApp(
            defaultTransition: GetPlatform.isAndroid
                ? Transition.fadeIn
                : Transition.cupertino,
            transitionDuration: Duration(milliseconds: 300),
            translations: AppTranlation(),
            locale: getLocal(),
            fallbackLocale: getLocal(),
            builder: BotToastInit(), //1. call BotToastInit
            navigatorObservers: [BotToastNavigatorObserver()], //2
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            home: SplashScreenView()));
  }
}

Locale getLocal() {
  if (storage.getAppLanguage() == 'ar') {
    return Locale('ar', 'SA');
  } else {
    return Locale('en', 'US');
  }
}
