import 'dart:convert';
import 'package:flutter_test/flutter_test.dart';
import 'package:habbit_pub/features/habit/data/models/habit_model.dart';
import 'package:habbit_pub/features/habit/domain/entities/habit.dart';

import '../../../../core/fixtures/fixture_reader.dart';

void main() {
  final tHabitModel = HabitModel(id: '1', name: 'Test', color: '#b23b3b');

  test(
    'should be a subclass of Habit entity',
    () async {
      // assert
      expect(tHabitModel, isA<Habit>());
    },
  );

  group('fromJson', () {
    test(
      'should return valid model',
      () async {
        // arrange
        final Map<String, dynamic> jsonMap = json.decode(fixture('habit.json'));
        // act
        final result = HabitModel.fromJson(jsonMap);
        // assert
        expect(result, tHabitModel);
      },
    );
  });

  group('toJson', () {
    test(
      'should return json string',
      () async {
        // act
        final result = tHabitModel.toJson();
        // assert
        final expectedMap = {"id": "1", "name": "Test", "color": '#b23b3b'};
        expect(result, expectedMap);
      },
    );
  });
}
