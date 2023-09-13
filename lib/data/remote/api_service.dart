import 'package:dio/dio.dart';
import 'package:fit_test/model/exercise.dart';
import 'package:fit_test/model/history.dart';
import 'package:retrofit/retrofit.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: '')
abstract class APIService {
  factory APIService(Dio dio, {String baseUrl}) = _APIService;

  @GET('/exercise')
  Future<HttpResponse<List<Exercise>>> getExercise();

  @GET('/history')
  Future<HttpResponse<List<History>>> getHistory({
    @Query('page') int page = 1,
    @Query('limit') int limit = 10,
    @Query('name') String? name,
    @Query('sortBy') String? sortBy = 'createdAt',
    @Query('order') String? order = 'desc',
  });

  @POST('/history')
  Future<HttpResponse<History>> addHistory({
    @Body() required Map<String, dynamic> body,
  });
}
