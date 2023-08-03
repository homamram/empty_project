import 'package:homam_p/core/enums/connectivity_status.dart';
import 'package:homam_p/core/services/base_controller.dart';
import 'package:homam_p/core/services/connectivity_service.dart';
import 'package:homam_p/ui/shared/utils.dart';

import '../core/utils/general_utiles.dart';

class MyAppController extends BaseController {
  ConnectivityStatus connectionStatus = ConnectivityStatus.ONLINE;

  @override
  void onInit() {
    listenToConnectionStatus();
    super.onInit();
  }

  void listenToConnectionStatus() {
    connectivityService.connectivityStatusController.stream.listen((event) {
      connectionStatus = event;
    });
  }
}
