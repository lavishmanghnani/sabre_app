import 'dart:convert';

import 'package:get/get.dart';
import 'package:sabre_app/repositories/terms_and_conditions_repository.dart';
import 'package:sabre_app/models/model_term_and_conditions.dart';


class TermsAndConditionsController extends GetxController{
  Rx<ModelTermsAndConditions> termsAndConditionsModel = ModelTermsAndConditions().obs;
  Rx<ModelTermsAndConditions> privacyPolicyModel = ModelTermsAndConditions().obs;
  RxBool dataLoaded = false.obs;

  @override
  void onInit() {
    super.onInit();
    termsAndConditionsRepo('term-and-condition').then((value) {
      print(jsonEncode(value));
      termsAndConditionsModel.value = value;
      dataLoaded.value = true;
    });

    termsAndConditionsRepo('privacy-policy').then((value) {
      print(jsonEncode(value));
      privacyPolicyModel.value = value;
      dataLoaded.value = true;
    });
  }

}