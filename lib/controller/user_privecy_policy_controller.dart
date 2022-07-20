import 'package:get/get.dart';
import 'package:sabre_app/models/model_notification.dart';
import 'package:sabre_app/repositories/notification_repository.dart';

class NotificationController extends GetxController{
  Rx<ModelNotification> notificationModel = ModelNotification().obs;
  RxBool dataLoaded = false.obs;

@override
  void onInit() {
    super.onInit();
    notificationRepo().then((value) {
      notificationModel.value = value;
      dataLoaded.value = true;
    });
  }

}