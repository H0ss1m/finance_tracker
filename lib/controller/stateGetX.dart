import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class TotalBalanceController extends GetxController {
  bool isVisible = false;
  void toggleVisibility() {
    isVisible = !isVisible;
    update();
  }
}