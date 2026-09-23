import 'package:dartz/dartz.dart';
import 'package:zync_music/data/data_sources/auth/auth_firebase_servise.dart';
import 'package:zync_music/data/models/auth/create_user_req.dart';
import 'package:zync_music/data/models/auth/signin_user_req.dart';
import 'package:zync_music/domain/repository/auth/auth.dart';
import 'package:zync_music/service_locator.dart';

class AuthRepositoryImpl extends AuthRepository {
  @override
  Future<Either> signin(SigninUserReq signinUserReq) async {
    return await sl<AuthFirebaseServise>().signin(signinUserReq);
  }

  @override
  Future<Either> signup(CreateUserReq createUserReq) async {
    return await sl<AuthFirebaseServise>().signup(createUserReq);
  }
  
  @override
  Future<Either> getUser() {
    return sl<AuthFirebaseServise>().getUser();
  }

}