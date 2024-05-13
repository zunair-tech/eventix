import 'package:Eventix/core/app_export.dart';
import 'package:Eventix/presentation/direction_screen/models/direction_model.dart';

class DirectionController extends GetxController {
  Rx<DirectionModel> directionModelObj = DirectionModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
