import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zync_music/domain/usecases/auth/get_user.dart';
import 'package:zync_music/presentation/profile/bloc/profile_info_state.dart';
import 'package:zync_music/service_locator.dart';

class ProfileInfoCubit extends Cubit<ProfileInfoState> {
  ProfileInfoCubit() : super(ProfileInfoLoading());

  Future<void> getUser() async {
    final result = await sl<GetUserUseCase>().call();
    result.fold(
      (failure) => emit(ProfileInfoFailure()),
      (userEntity) => emit(ProfileInfoLoaded(userEntity: userEntity)),
    );
  }
}