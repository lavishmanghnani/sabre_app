import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sabre_app/controller/user_privecy_policy_controller.dart';


class GridViewScreen extends StatefulWidget {
  const GridViewScreen({Key? key}) : super(key: key);

  @override
  State<GridViewScreen> createState() => _GridViewScreenState();
}

class _GridViewScreenState extends State<GridViewScreen> {

  NotificationController notificationController = Get.put(NotificationController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
        child: Obx(() {
            return notificationController.dataLoaded.value == false ?
            const Center(child: CircularProgressIndicator(),) :
            Column(
              children: [
                GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: notificationController.notificationModel.value.data!.july192022!.length,
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                            padding: const EdgeInsets.all(8),
                            color: Colors.teal[(index)],
                            child: Column(
                              children: [
                                Text(notificationController.notificationModel.value.data!.july192022![index].title.toString()),
                                Text(notificationController.notificationModel.value.data!.july192022![index].body.toString()),
                                Text(notificationController.notificationModel.value.data!.july192022![index].time.toString()),
                              ],
                            )
                          );
                },
                ),
              ],
            );
          }
        ),
      )
    );
  }
}
