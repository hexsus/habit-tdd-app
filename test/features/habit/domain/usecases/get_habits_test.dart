import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:habbit_pub/core/usecases/usecase.dart';
import 'package:habbit_pub/features/habit/domain/entities/habit.dart';

import 'package:habbit_pub/features/habit/domain/repositories/habit_repository.dart';
import 'package:habbit_pub/features/habit/domain/usecases/get_habits.dart';
import 'package:mockito/mockito.dart';
import 'package:flutter_test/flutter_test.dart';

class MockHabitRepository extends Mock implements HabitRepository {}

void main() {
  GetHabits usecase;
  MockHabitRepository mockHabitRepository;

  setUp(() {
    mockHabitRepository = MockHabitRepository();
    usecase = GetHabits(mockHabitRepository);
  });

  final tHabit = Habit(id: '1', name: 'Test habit', color: '#b23b3b');
  final tHabits = [tHabit];
  test(
    'should get habitts from repository',
    () async {
      // arrange
      when(mockHabitRepository.getHabits())
          .thenAnswer((_) async => Right(tHabits));
      // act
      final result = await usecase(NoParams());
      // assert
      expect(result, Right(tHabits));
    },
  );
}
