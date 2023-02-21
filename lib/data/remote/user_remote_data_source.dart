import 'package:dio/dio.dart';
import 'package:flutter_clean_architecture/data/model/user.dart';

class UserRemoteDataSource {
  final Dio _dio = Dio();

  UserRemoteDataSource(Dio dio);

  Future<List<User>> getUsers() async {
    final response = await _dio.get('https://jsonplaceholder.typicode.com/users');
    return (response.data as List).map((e) => User(
      id: e['id'],
      name: e['name'],
      email: e['email'],
      phone: e['phone'],
    )).toList();
  }
}