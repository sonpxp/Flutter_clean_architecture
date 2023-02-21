import 'package:flutter_clean_architecture/data/model/user.dart';
import 'package:flutter_clean_architecture/domain/repository/user_repository.dart';

class GetUsersUseCase {
  final UserRepository _userRepository;

  GetUsersUseCase(this._userRepository);

  Future<List<User>> execute() async {
    return _userRepository.getUsers();
  }
}