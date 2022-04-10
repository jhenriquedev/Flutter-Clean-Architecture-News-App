import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newsapp/feature/domain/domain.dart';
part 'user-state.dart';

class UserCubit extends Cubit < UserState > {
  final SingUpUseCase signUpUseCase;
  final GetCreateCurrentUserUsecase getCreateCurrentUserUseCase;

  UserCubit({ required this.getCreateCurrentUserUseCase, required this.signUpUseCase}): super(UserInitial());

  Future < void > submitSignUp({ required UserEntity user }) async {
    emit(UserLoading());
    try {
      await signUpUseCase.call(user);
      await getCreateCurrentUserUseCase.call(user);
      emit(UserSuccess());
    } catch (e) {
      emit(UserFailure());
    }

  }
}
