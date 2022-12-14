import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_settings_screens/flutter_settings_screens.dart';
import 'package:get/get.dart' as GET;
import 'package:get_storage/get_storage.dart';
import 'package:real_state_mangament/views/search/widgets/search_offers_item.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Api {
  static final dio = Dio(BaseOptions(
    baseUrl: 'http://aqari.gulfsmo.net',
    receiveDataWhenStatusError: true,
  ));

  static void initilzieIntercepters() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    dio.interceptors.add(InterceptorsWrapper(
      onRequest: (request, handler) async {
        String? token = sharedPreferences.getString('token');
        GetStorage box = GetStorage();
        // var token = SharePreferenceCache();
        // '1|0It4iAMsv9YU7J6p2Hm7RbTH75qLJfWYMDyFIEg5'; //await GetStorage().read('login_token');
        // print(token);
        Map<String, String> headers = {
          'Accept': 'application/json',
          'Content-Type': 'application/json',
          'Authorization': 'Bearer ${token}',
        };
        // print(headers.toString());
        request.headers.addAll(headers);
        return handler.next(request);
      },
      onResponse: (response, handler) {
        // print(response);
        if (response.data['status'] == false) throw response.data['message'];
        return handler.next(response);
      },
      onError: (error, handler) {
        if (GET.Get.isDialogOpen == true) {
          GET.Get.back();
        }

        GET.Get.snackbar(
          "خطا ",
          'يرجي اعاده المحاوله',
          snackPosition: GET.SnackPosition.BOTTOM,
          backgroundColor: Colors.black26,
          colorText: Colors.white,
        );

        return handler.next(error); //continue
      },
    ));
  }

  static getGenres() async {
    return dio.get('/api/genres');
  }

  static getMovies({String? type, int? genre_id, int? page = 1}) async {
    return dio.get('/api/movies',
        queryParameters: {'type': type, 'genre_id': genre_id, 'page': page});
  }

  static Future<Response> getActors({required int movieId}) async {
    return dio.get('/api/movies/${movieId}/actors');
  }

  static Future<Response> getRelatedMovies({required int movieId}) async {
    return dio.get('/api/movies/${movieId}/related_movies');
  }

  static Future<Response> Login({required Map loginData}) async {
    return dio.post('/api/client/login', data: loginData);
  }

  static Future<Response> Register({required Map loginData}) async {
    return dio.post('/api/client/register', data: loginData);
  }

  static Future<Response> FetchOffer(
      {required int service, int page = 1}) async {
    return dio.get('/api/client/offers',
        queryParameters: {'service': service, 'page': page});
  }

  static Future<Response> fetchAreas() async {
    return dio.get('/api/areas');
  }

  static Future<Response> SearchOffer(
      {required String value, int? areaId}) async {
    return dio.get('/api/client/offers/Search',
        queryParameters: {'search': value, 'area_id': areaId});
  }

  static Future<Response> fetchFavorate() async {
    return dio.get('/api/client/offers/favorate-list');
  }

  static Future<Response> toggelFavorate(int id) async {
    return dio.get('/api/client/offers/favorate/' + '$id');
  }

  static Future<Response> fetchMarkers() async {
    return dio.get('/api/client/offers/inMap');
  }
}
