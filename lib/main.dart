import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/domain/repository/user_repository.dart';
import 'package:flutter_clean_architecture/domain/usecase/get_users_usecase.dart';
import 'package:flutter_clean_architecture/data/remote/user_remote_data_source.dart';
import 'package:flutter_clean_architecture/data/repository_impl/user_repository_impl.dart';
import 'package:flutter_clean_architecture/presentation/users/users_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final dio = Dio();
    final userRemoteDataSource = UserRemoteDataSource(dio);
    final userRepository = UserRepositoryImpl(userRemoteDataSource);
    final getUsersUseCase = GetUsersUseCase(userRepository);

    return Provider.value(
      value: getUsersUseCase,
      child: MaterialApp(
        title: 'Flutter Clean Architecture',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const UsersScreen(),
      ),
    );
  }
}
