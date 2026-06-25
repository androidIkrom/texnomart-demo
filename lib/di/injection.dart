import 'package:get_it/get_it.dart';
import 'package:dio/dio.dart';
import 'package:chucker_flutter/chucker_flutter.dart';
import '../api/api_service.dart';

final getIt = GetIt.instance;

Future<void> setupInjection() async {
  // Dio
  final dio = Dio(BaseOptions(
    contentType: "application/json",
    receiveTimeout: const Duration(seconds: 30),
    connectTimeout: const Duration(seconds: 30),
  ));

  dio.interceptors.add(ChuckerDioInterceptor());

  getIt.registerLazySingleton<Dio>(() => dio);

  // API Service
  getIt.registerLazySingleton<ApiService>(() => ApiService(getIt<Dio>()));
}
