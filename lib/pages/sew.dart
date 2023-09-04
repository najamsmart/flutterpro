// To parse this JSON data, do
//
//     final user = userFromJson(jsonString);

import 'dart:convert';

List<User> userFromJson(String str) => List<User>.from(json.decode(str).map((x) => User.fromJson(x)));

String userToJson(List<User> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class User {
  User({
    required this.date,
    required this.description,
    required this.id,
    required this.studentId,
    required this.title,
  });

  String date;
  String description;
  int id;
  String studentId;
  String title;

  factory User.fromJson(Map<String, dynamic> json) => User(
    date: json["date"] == null ? null : json["date"],
    description: json["description"],
    id: json["id"],
    studentId: json["student_id"] == null ? null : json["student_id"],
    title: json["title"],
  );

  Map<String, dynamic> toJson() => {
    "date": date == null ? null : date,
    "description": description,
    "id": id,
    "student_id": studentId == null ? null : studentId,
    "title": title,
  };
}
