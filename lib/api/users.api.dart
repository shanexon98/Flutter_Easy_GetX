import 'package:dio/dio.dart';
import 'package:getxpro/model/users_modell.dart';

class UsersAPI {
  UsersAPI._internal();
  static UsersAPI _instance = UsersAPI._internal();
  static UsersAPI get instance => _instance;

  final dio = Dio();
  final url = 'https://reqres.in/api/users';
  Future<List<User>?> getUsers(int page) async {
    try {
      final Response response =
          await dio.get(this.url, queryParameters: {'page': page, 'delay': 2});

      return (response.data['data'] as List)
          .map((e) => User.fromJson(e))
          .toList();
    } catch (e) {
      print(e);
      return null;
    }
  }
}
