
import 'package:dio/dio.dart';

import '../../../constant/app_constance.dart';


class DioHelper {
  static late Dio _dio;
  static init() {
    _dio = Dio(
      BaseOptions(
        baseUrl: AppConstance.apiBaseUrl,
        receiveDataWhenStatusError: true,
       
      ),
    );
  }

  static Future<Response> getdata({
    required String endPoint,
    Map<String , dynamic> ?query,
    String lang = 'en-US' ,
    
  }) async {
    _dio.options.headers = {
      'Content-Type': 'application/json',
      'lang': lang , 
       
    } ;
    return await _dio.get(endPoint, queryParameters: query);
  }

  static Future<Response> postdata({
    required String endPoint,
    required data,
    query,
    String lang = 'en-US' ,
  }) async {
    _dio.options.headers = {
      'Content-Type': 'application/json',
      'lang': lang , 
      
    } ;
    return await _dio.post( endPoint , queryParameters: query, data: data);
  }
  static Future<Response> putdata({
    required String endPoint,
    required data,
    query,
    String lang = 'en-US' ,
  }) async {
    _dio.options.headers = {
      'Content-Type': 'application/json',
      'lang': lang ,  
    } ;
    return await _dio.put( endPoint , queryParameters: query, data: data);
  }
}
