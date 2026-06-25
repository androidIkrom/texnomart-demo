import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: "https://gw.texnomart.uz/api/web/v1/")
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @GET("header/top-categories")
  Future<dynamic> getTopCategoriesRaw();

  @GET("home/special-products")
  Future<dynamic> getSpecialProducts(@Query("type") String type);

  @GET("home/special-products?type=hit_products")
  Future<dynamic> getHitProducts();
}
