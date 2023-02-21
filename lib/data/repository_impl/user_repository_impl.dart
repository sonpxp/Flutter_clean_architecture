import 'package:flutter_clean_architecture/data/model/user.dart';
import 'package:flutter_clean_architecture/data/remote/user_remote_data_source.dart';
import 'package:flutter_clean_architecture/domain/repository/user_repository.dart';

class UserRepositoryImpl implements UserRepository {
  final UserRemoteDataSource _userRemoteDataSource;

  UserRepositoryImpl(this._userRemoteDataSource);


  @override
  Future<List<User>> getUsers() async {
    return _userRemoteDataSource.getUsers();
  }

}