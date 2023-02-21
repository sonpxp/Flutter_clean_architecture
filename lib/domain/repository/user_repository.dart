import 'package:flutter_clean_architecture/data/model/user.dart';

abstract class UserRepository {
  Future<List<User>> getUsers();
}