import 'package:dartz/dartz.dart';
import 'package:zync_music/core/usecase/usecase.dart';
import 'package:zync_music/data/models/auth/signin_user_req.dart';
import 'package:zync_music/domain/repository/auth/auth.dart';
import 'package:zync_music/service_locator.dart';

class SigninUseCase implements Usecase<Either,SigninUserReq> {
  @override
  Future<Either> call({SigninUserReq? params}) async{
    return await sl<AuthRepository>().signin( params!);
  }

}