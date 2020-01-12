import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:habbit_pub/features/habit/domain/entities/habit.dart';
import 'package:habbit_pub/features/habit/domain/repositories/habit_repository.dart';
import 'package:habbit_pub/features/habit/domain/usecases/add_habit.dart';

import 'package:mockito/mockito.dart';
import 'package:flutter_test/flutter_test.dart';

class MockHabitRepository extends Mock implements HabitRepository {}

void main() {
  AddHabit usecase;
  MockHabitRepository mockHabitRepository;

  setUp(() {
    mockHabitRepository = MockHabitRepository();
    usecase = AddHabit(mockHabitRepository);
  });

  final tHabit = Habit(id: '1', name: 'Test habit', color: '#b23b3b');
  final tHabits = [tHabit];
  test(
    'should add habit to server and return one',
    () async {
      // arrange
      when(mockHabitRepository.addHabit(tHabit))
          .thenAnswer((habit) async => Right(tHabit));
      // act
      final result = await usecase(Params(tHabit));
      // assert
      expect(result, Right(tHabit));
    },
  );
}
