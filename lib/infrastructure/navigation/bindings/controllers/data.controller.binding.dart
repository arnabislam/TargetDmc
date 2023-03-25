import 'package:get/get.dart';

import '../../../../presentation/data/controllers/data.controller.dart';

class DataControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DataController>(
      () => DataController(),
    );
  }
}
