import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:sabre_app/controller/terms_and_conditions_controller.dart';

const primaryColor = Color(0xFF4169dd);

class PrivacyPolicyScreen extends StatefulWidget {
  const PrivacyPolicyScreen({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<PrivacyPolicyScreen> createState() => _PrivacyPolicyScreen();
}

class _PrivacyPolicyScreen extends State<PrivacyPolicyScreen> {

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
    return  Obx(() {
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
                Controller.privacyPolicyModel.value.data!.title.toString()
            ),
            centerTitle: true,
            actions: <Widget>[],
          )),
      body: SingleChildScrollView(
          child: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Text(Controller.privacyPolicyModel.value.data!.content.toString())

        ),
      )),
    );});
  }
}
