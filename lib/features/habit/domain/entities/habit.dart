import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class Habit extends Equatable {
  final String id;
  final String name;
  final String color;

  Habit({
    @required this.id,
    @required this.name,
    @required this.color,
  });

  @override
  List<Object> get props => [this.id, this.name, this.color];
}