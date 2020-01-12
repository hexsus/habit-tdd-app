import 'package:habbit_pub/features/habit/data/models/habit_model.dart';

abstract class HabitLocalDataSource {
  Future<HabitModel> getLastHabit();
  Future<void> cacheHabits(HabitModel habitModel);
}