import 'package:dio/dio.dart';
import 'package:newsapp/core/core.dart';
import 'package:newsapp/feature/data/data.dart';
import 'package:retrofit/retrofit.dart';
part 'news_api_service.g.dart';

@RestApi(baseUrl: kBaseUrl)
abstract class NewsApiService {
  factory NewsApiService(Dio dio, {String baseUrl}) = _NewsApiService;

  @GET('/top-headlines')
  Future<HttpResponse<BreakingNewsResponseModel>> getBreakingNewsArticles({
    @Query("apiKey") String ? apiKey,
    @Query("country") String ? country,
    @Query("category") String ? category,
    @Query("page") int ? page,
    @Query("pageSize") int ? pageSize,
  });
}
