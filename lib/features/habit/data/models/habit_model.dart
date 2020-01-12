import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:habbit_pub/features/habit/domain/entities/habit.dart';

class HabitModel extends Habit {
  HabitModel({
    @required String id,
    @required String name,
    @required String color,
  }): super(id: id, name: name, color: color);


  factory HabitModel.fromJson(Map<String, dynamic>json) {
    return HabitModel(id: json['id'], name: json['name'], color: json['color']);
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'color': color
    };
  }
}