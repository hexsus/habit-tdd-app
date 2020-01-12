import 'package:dartz/dartz.dart';
import 'package:habbit_pub/core/error/failures.dart';
import 'package:habbit_pub/core/usecases/usecase.dart';
import 'package:habbit_pub/features/habit/domain/entities/habit.dart';
import 'package:habbit_pub/features/habit/domain/repositories/habit_repository.dart';


class GetHabits implements UseCase<List<Habit>, NoParams> {
  final HabitRepository repository;

  GetHabits(this.repository);

  @override
  Future<Either<Failure, List<Habit>>> call(NoParams params) async {
   return await repository.getHabits();
  }
}