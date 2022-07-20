import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:sabre_app/models/model_term_and_conditions.dart';

Future<ModelTermsAndConditions> termsAndConditionsRepo(slug) async {
  var map = <String, dynamic>{};

  map['slug'] = slug;

   final response = await http.post(
     Uri.parse('http://sabre.eoxyslive.com/api/page'),
     body: map
   );

  if (response.statusCode == 200) {
    return ModelTermsAndConditions.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('Failed to load album');
  }
}
