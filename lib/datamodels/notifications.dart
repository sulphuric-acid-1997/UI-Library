// To parse this JSON data, do
//
//     final notificationDataModel = notificationDataModelFromJson(jsonString);

import 'dart:convert';

List<NotificationDataModel> notificationDataModelFromJson(String str) =>
    List<NotificationDataModel>.from(
        json.decode(str).map((x) => NotificationDataModel.fromJson(x)));

String notificationDataModelToJson(List<NotificationDataModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class NotificationDataModel {
  NotificationDataModel({
    required this.dateTime,
    required this.content,
  });

  String dateTime;
  String content;

  factory NotificationDataModel.fromJson(Map<String, dynamic> json) =>
      NotificationDataModel(
        dateTime: json["dateTime"],
        content: json["content"],
      );

  Map<String, dynamic> toJson() => {
        "dateTime": dateTime,
        "content": content,
      };
}
