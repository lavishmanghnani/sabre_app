import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:sabre_app/controller/terms_and_conditions_controller.dart';


const primaryColor = Color(0xFF4169dd);

class TermsAndConditionsScreen extends StatefulWidget {
  const TermsAndConditionsScreen({Key? key, required this.title})
      : super(key: key);

  final String title;

  @override
  State<TermsAndConditionsScreen> createState() => _TermsAndConditionsScreen();
}

class _TermsAndConditionsScreen extends State<TermsAndConditionsScreen> {

  final Controller = Get.put(TermsAndConditionsController());


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  bool showvalue = true;

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Controller.dataLoaded.value == false ?
      const Center(child: CircularProgressIndicator(),) :Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(70.0),
            child: AppBar(
              systemOverlayStyle: SystemUiOverlayStyle(
                // Status bar color
                statusBarColor: Color(0xFF4169dd),

                // Status bar brightness (optional)
                statusBarIconBrightness: Brightness.dark,
                // For Android (dark icons)
                statusBarBrightness: Brightness.light, // For iOS (dark icons)
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(20),
                  )),
              backgroundColor: primaryColor,
              leading: Icon(Icons.arrow_back_outlined),
              title: Text(
                  Controller.termsAndConditionsModel.value.data!.title.toString()
              ),
              centerTitle: true,
              actions: <Widget>[],
            )),
        body: SingleChildScrollView(
            child: Center(
              child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(Controller.termsAndConditionsModel.value.data!.content.toString())

              ),
            )),
      );});
  }
}
