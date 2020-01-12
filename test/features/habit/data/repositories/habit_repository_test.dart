import 'package:habbit_pub/core/platform/network_info.dart';
import 'package:habbit_pub/features/habit/data/datasources/habit_local_datasource.dart';
import 'package:habbit_pub/features/habit/data/datasources/habit_remote_datasource.dart';
import 'package:habbit_pub/features/habit/data/models/habit_model.dart';
import 'package:habbit_pub/features/habit/data/repositories/habit_repository_impl.dart';
import 'package:habbit_pub/features/habit/domain/entities/habit.dart';
import 'package:mockito/mockito.dart';
import 'package:flutter_test/flutter_test.dart';

class MockRemoteDataSource extends Mock implements HabitRemoteDatasource {}

class MockLocalDataSource extends Mock implements HabitLocalDataSource {}

class MockNetworkInfo extends Mock implements NetworkInfo {}

void main() {
  HabitRepositoryImpl repository;
  MockRemoteDataSource mockRemoteDataSource;
  MockLocalDataSource mockLocalDataSource;
  MockNetworkInfo mockNetworkInfo;

  setUp(() {
    mockRemoteDataSource = MockRemoteDataSource();
    mockLocalDataSource = MockLocalDataSource();
    mockNetworkInfo = MockNetworkInfo();

    repository = HabitRepositoryImpl(
      remoteDataSource: mockRemoteDataSource,
      localDataSource: mockLocalDataSource,
      networkInfo: mockNetworkInfo,
    );
  });

  group('getHabits', () {
    final HabitModel tHabitModel = HabitModel(id: '10', name: 'Test Habit',color: 'red');
    final Habit tHabit = tHabitModel;
  

    test(
      'should check if the device is online',
      ()async {
        // arrange
        when(mockNetworkInfo.isConnected).thenAnswer((_) async => true);
        // act
        repository.getHabits();
        // assert
        verify(mockNetworkInfo.isConnected);
      },
    );
  });
}
