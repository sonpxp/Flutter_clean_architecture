import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_clean_architecture/data/model/user.dart';
import 'package:flutter_clean_architecture/domain/usecase/get_users_usecase.dart';

class UsersState {
  final bool isLoading;
  final List<User> users;
  final String error;

  UsersState(
      {required this.isLoading, required this.users, required this.error});

  factory UsersState.initial() {
    return UsersState(isLoading: false, users: [], error: '');
  }

  UsersState copyWith({bool? isLoading, List<User>? users, String? error}) {
    return UsersState(
      isLoading: isLoading ?? this.isLoading,
      users: users ?? this.users,
      error: error ?? this.error,
    );
  }
}

abstract class UsersEvent {}

class LoadUsersEvent extends UsersEvent {}

class UsersBloc extends Bloc<UsersEvent, UsersState> {
  final GetUsersUseCase _getUsersUseCase;

  UsersBloc(this._getUsersUseCase) : super(UsersState.initial());

  Stream<UsersState> mapEventToState(UsersEvent event) async* {
    if (event is LoadUsersEvent) {
      yield state.copyWith(isLoading: true, error: '');
      try {
        final users = await _getUsersUseCase.execute();
        yield state.copyWith(isLoading: false, users: users);
      } catch (e) {
        yield state.copyWith(isLoading: false, error: e.toString());
      }
    }
  }
}
