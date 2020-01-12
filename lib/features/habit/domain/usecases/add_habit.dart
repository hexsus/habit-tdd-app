import 'package:dartz/dartz.dart';
import 'package:habbit_pub/core/error/failures.dart';
import 'package:habbit_pub/core/usecases/usecase.dart';
import 'package:habbit_pub/features/habit/domain/entities/habit.dart';
import 'package:habbit_pub/features/habit/domain/repositories/habit_repository.dart';


class AddHabit implements UseCase<Habit, Params> {
  final HabitRepository repository;

  AddHabit(this.repository);

  @override
  Future<Either<Failure, Habit>> call(Params params) {
    return repository.addHabit(params.habit);
  }

}

class Params {
  final Habit habit;
  Params(this.habit);
}