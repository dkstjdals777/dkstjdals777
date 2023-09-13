import 'dart:io';
import 'package:retrofit/dio.dart';
import 'package:dio/dio.dart';

import 'data_state.dart';

class RemoteApiCaller {
  Future<DataState<S>> call<S extends dynamic>(
      Future<HttpResponse<S>> request, String apiName) async {
    try {
      final httpResponse = await request;
      if (httpResponse.response.statusCode == HttpStatus.ok ||
          httpResponse.response.statusCode == HttpStatus.created) {
        return DataSuccess<S>(
          httpResponse.data,
          code: httpResponse.response.statusCode.toString(),
          message: '',
        );
      }

      return DataFailed<S>(
        DioException(
          requestOptions: httpResponse.response.requestOptions,
          response: httpResponse.response,
          error: httpResponse.response.statusMessage,
          type: DioExceptionType.unknown,
        ),
        code: httpResponse.data.code,
      );
    } on DioException catch (e) {
      return DataFailed<S>(e);
    } catch (e) {
      return DataFailed<S>(
        DioException(
          requestOptions: RequestOptions(path: apiName),
          error: e,
          type: DioExceptionType.unknown,
        ),
      );
    }
  }
}
