import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:habbit_pub/core/error/failures.dart';
import 'package:habbit_pub/core/platform/network_info.dart';
import 'package:habbit_pub/features/habit/data/datasources/habit_local_datasource.dart';
import 'package:habbit_pub/features/habit/data/datasources/habit_remote_datasource.dart';
import 'package:habbit_pub/features/habit/domain/entities/habit.dart';
import 'package:habbit_pub/features/habit/domain/repositories/habit_repository.dart';

class HabitRepositoryImpl implements HabitRepository {
  final HabitRemoteDatasource remoteDataSource;
  final HabitLocalDataSource localDataSource;
  final NetworkInfo networkInfo;

  HabitRepositoryImpl({
    @required this.remoteDataSource,
    @required this.localDataSource,
    @required this.networkInfo,
  });

  @override
  Future<Either<Failure, Habit>> addHabit(Habit habit) {
    // TODO: implement addHabit
    return null;
  }

  @override
  Future<Either<Failure, List<Habit>>> getHabits() {
    networkInfo.isConnected;
    // TODO: implement getHabits
    return null;
  }
}
