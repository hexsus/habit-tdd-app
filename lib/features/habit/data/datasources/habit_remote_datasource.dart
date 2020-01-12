import 'package:habbit_pub/features/habit/domain/entities/habit.dart';

abstract class HabitRemoteDatasource {
  /// Call post localhost:3000/habit 
  /// 
  /// Throws a [ServerExeption] for all error codes
  Future<Habit> addHabit(Habit habit);

  /// Call get localhost:3000/habit 
  /// 
  /// Throws a [ServerExeption] for all error codes
  Future<List<Habit>> getHabits();
}
