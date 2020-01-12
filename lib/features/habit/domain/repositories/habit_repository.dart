import 'package:dartz/dartz.dart';
import 'package:habbit_pub/core/error/failures.dart';
import 'package:habbit_pub/features/habit/domain/entities/habit.dart';

abstract class HabitRepository {
  Future<Either<Failure, Habit>> addHabit(Habit habit);
  Future<Either<Failure, List<Habit>>> getHabits();
}