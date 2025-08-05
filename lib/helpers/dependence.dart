import 'package:food_delivery_apk/controllers/auth_controller.dart';
import 'package:food_delivery_apk/controllers/location_controller.dart';
import 'package:food_delivery_apk/controllers/popular_product_controller.dart';
import 'package:food_delivery_apk/data/api/api_client.dart';
import 'package:food_delivery_apk/data/repository/location_repo.dart';
import 'package:food_delivery_apk/data/repository/popular_product_repo.dart';
import 'package:food_delivery_apk/utils/app_constants.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../data/repository/auth_repo.dart';
import '../data/repository/cart_repo.dart';
import '../data/repository/recommnded_product_repo.dart';

Future<void> init()async {
  final sharedPreferences = await SharedPreferences.getInstance();

  Get.lazyPut(() => sharedPreferences);
 // apiclient
  Get.lazyPut(()=>ApiClient(appBaseUrl: AppConstants.BASE_URL));
  Get.lazyPut(()=> AuthRepo(apiClient: Get.find(), sharedPreferences: Get.find()));

  //repo
  Get.lazyPut(()=>PopularProductRepo(apiClient: Get.find()));
  // Get.lazyPut(()=>RecommendedProductRepo(apiClient: Get.find()));
  Get.lazyPut(()=>CartRepo(sharedPreferences: Get.find()));
  Get.lazyPut(() => LocationRepo(apiClient: Get.find(), sharedPreferences: Get.find())); 
  
//controllers
  Get.lazyPut(() => AuthController(authRepo: Get.find()));
  Get.lazyPut(()=>PopularProductController(popularProductRepo: Get.find()));
  Get.lazyPut(() => LocationController(locationRepo:Get.find()));
 }
