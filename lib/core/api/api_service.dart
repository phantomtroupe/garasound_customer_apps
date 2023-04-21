import 'package:dio/dio.dart';
import 'package:garasound_customer_apps/core/constants/constants.dart';
import 'package:garasound_customer_apps/features/home_screen/data/entity/creator_entity.dart';
import 'package:garasound_customer_apps/features/home_screen/data/entity/track_entity.dart';
import 'package:garasound_customer_apps/features/login_screen/data/entity/customer_entity.dart';
import 'package:garasound_customer_apps/features/login_screen/data/entity/login_request_entity.dart';
import 'package:garasound_customer_apps/features/purchase_history_screen/data/entity/purchase_history_entity.dart';
import 'package:retrofit/retrofit.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: API_BASE_URL_DEV)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) =_ApiService;

  @GET("creator/list/top")
  Future<List<CreatorEntity>> getListCreator();

  @GET("track/status/2")
  Future<List<TrackEntity>> getListTrack();

  @GET("order/customer/{id}")
  Future<List<PurchaseHistoryEntity>> getPurchaseHistory(@Path("id") String idCustomer, @Header("Authorization") String token);

  @POST("customer/login")
  Future<CustomerEntity> login(@Body() LoginRequestEntity loginData);

  @GET("creator/{creatorId}")
  Future<CreatorEntity> getCreatorById(@Path("creatorId") String creatorId);
}