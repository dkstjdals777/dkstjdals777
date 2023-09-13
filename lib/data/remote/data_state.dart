import 'package:dio/dio.dart';

class DataErrorInfo {
  final DioException? error;
  final String? code;
  final String? message;

  const DataErrorInfo({this.error, this.code, this.message});
}

abstract class DataState<T> {
  final T? data;
  final DioException? error;
  final String? code;
  final String? message;

  const DataState({this.data, this.error, this.code, this.message});

  DataErrorInfo getErrorInfo() =>
      DataErrorInfo(error: error, code: code, message: message);
}

class DataEmpty<T> extends DataState<T> {
  const DataEmpty({T? data, DioException? error})
      : super(data: data, error: error);
}

class DataSuccess<T> extends DataState<T> {
  const DataSuccess(T data,
      {DioException? error, String? code, String? message})
      : super(data: data, error: error, code: code, message: message);
}

class DataFailed<T> extends DataState<T> {
  DataFailed(DioException error, {T? data, String? code, String? message})
      : super(data: data, error: error, code: code, message: message);

  //RemoteResultModel? errorInfo() => data as RemoteResultModel?;
}
