class ModelNotification {
  bool? status;
  String? message;
  Data? data;

  ModelNotification({this.status, this.message, this.data});

  ModelNotification.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    data['message'] = message;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  List<July192022>? july192022;

  Data({this.july192022});

  Data.fromJson(Map<String, dynamic> json) {
    if (json['July 19,2022'] != null) {
      july192022 = <July192022>[];
      json['July 19,2022'].forEach((v) {
        july192022!.add(July192022.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (july192022 != null) {
      data['July 19,2022'] = july192022!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class July192022 {
  String? title;
  String? body;
  String? time;

  July192022({this.title, this.body, this.time});

  July192022.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    body = json['body'];
    time = json['time'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['title'] = title;
    data['body'] = body;
    data['time'] = time;
    return data;
  }
}
