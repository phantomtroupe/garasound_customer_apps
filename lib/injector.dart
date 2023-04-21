import 'package:dio/dio.dart';
import 'package:garasound_customer_apps/core/api/api_service.dart';
import 'package:garasound_customer_apps/features/home_screen/data/datasource/creator_datasource.dart';
import 'package:garasound_customer_apps/features/home_screen/data/datasource/track_datasource.dart';
import 'package:garasound_customer_apps/features/home_screen/data/repository/creator_repository.dart';
import 'package:garasound_customer_apps/features/home_screen/data/repository/track_repository.dart';
import 'package:garasound_customer_apps/features/home_screen/domain/use_case/creator_use_case.dart';
import 'package:garasound_customer_apps/features/home_screen/domain/use_case/track_use_case.dart';
import 'package:garasound_customer_apps/features/login_screen/data/datasource/login_screen_datasource.dart';
import 'package:garasound_customer_apps/features/login_screen/data/repository/login_screen_repository.dart';
import 'package:garasound_customer_apps/features/login_screen/domain/use_case/login_screen_use_case.dart';
import 'package:garasound_customer_apps/features/purchase_history_screen/data/datasource/purchase_history_datasource.dart';
import 'package:garasound_customer_apps/features/purchase_history_screen/data/repository/purchase_history_repository.dart';
import 'package:garasound_customer_apps/features/purchase_history_screen/domain/use_case/purchase_history_use_case.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

Future<void> init() async{
  // Use Cases
  sl.registerLazySingleton<CreatorUseCase>(() => CreatorUseCaseImpl(sl()));
  sl.registerLazySingleton<TrackUseCase>(() => TrackUseCaseImpl(sl()));
  sl.registerLazySingleton<PurchaseHistoryUseCase>(() => PurchaseHistoryUseCaseImpl(sl()));
  sl.registerLazySingleton<LoginScreenUseCase>(() => LoginScreenUseCaseImpl(sl()));

  // Repository
  sl.registerLazySingleton<CreatorRepository>(() => CreatorRepositoryImpl(sl()));
  sl.registerLazySingleton<TrackRepository>(() => TrackRepositoryImpl(sl()));
  sl.registerLazySingleton<PurchaseHistoryRepository>(() => PurchaseHistoryRepositoryImpl(sl()));
  sl.registerLazySingleton<LoginScreenRepository>(() => LoginScreenRepositoryImpl(sl()));

  // Datasources
  sl.registerLazySingleton<CreatorDatasource>(() => CreatorDatasourceImpl(sl()));
  sl.registerLazySingleton<TrackDatasource>(() => TrackDatasourceImpl(sl()));
  sl.registerLazySingleton<PurchaseHistoryDatasource>(() => PurchaseHistoryDatasourceImpl(sl()));
  sl.registerLazySingleton<LoginScreenDatasource>(() => LoginScreenDatasourceImpl(sl()));

  // Core
  sl.registerLazySingleton<ApiService>(() => ApiService(sl()));

  // Dio
  sl.registerLazySingleton(
        () => Dio(
      BaseOptions(
        connectTimeout: 30000,
        receiveTimeout: 30000,
      ),
    ),
  );
}