import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:get_it/get_it.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import 'data/remote/api_service.dart';
import 'data/repositories/api_repository.dart';

final injector = GetIt.instance;

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}

Future<void> initDependencies() async {
  HttpOverrides.global = MyHttpOverrides();

  final dio = Dio(BaseOptions(
    //baseUrl: 'https://64ffc5bd18c34dee0cd3f0b4.mockapi.io',
    connectTimeout: const Duration(seconds: 15),
    receiveTimeout: const Duration(seconds: 30),
    headers: {'Content-Type': 'application/json'},
  ));

  if (kDebugMode) {
    dio.interceptors.add(PrettyDioLogger(
      requestHeader: true,
      requestBody: true,
      responseHeader: true,
      compact: false,
      maxWidth: 255,
    ));
  }

  injector.registerSingleton<Dio>(dio);
  injector.registerSingleton<APIService>(APIService(injector(),
      baseUrl: 'https://64ffc5bd18c34dee0cd3f0b4.mockapi.io'));
  injector.registerSingleton<APIRepository>(APIRepository(injector()));
}
