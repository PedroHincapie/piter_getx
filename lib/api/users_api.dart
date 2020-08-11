import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:piter_getx/models/user.dart';

const String END_POINT = 'https://reqres.in/api/users';

class UsersAPI {
  //Clase singleton
  UsersAPI._internal();

  static UsersAPI _intancia = UsersAPI._internal();

  static UsersAPI get intancia => _intancia;

  final _dio = Dio();

  Future<List<User>> getUser(int page) async {
    try {
      final Response response = await this._dio.get(
        END_POINT,
        queryParameters: {'page': page},
      );

      return (response.data['data'] as List)
          .map((e) => User.fromJson(e))
          .toList();
    } on Exception catch (e) {
      debugPrint('Error al consumir api $END_POINT');
    }
  }
}
