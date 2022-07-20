import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:sabre_app/models/model_notification.dart';

Future<ModelNotification> notificationRepo () async {
  final response = await http.post(Uri.parse('http://sabre.eoxyslive.com/api/notification-list'),
  );

  if (response.statusCode == 200) {
    return ModelNotification.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('Failed to load album');
  }
}