import 'package:fruits_market/features/auth/domain/respoteries/auth_repo.dart';

class AuthRepoImplementation extends AuthRepo{
  @override
  Future completeInformation({String name, String phone, String address}) {
    throw UnimplementedError();
  }

  @override
  Future logIinWithFaceBooke() {
    throw UnimplementedError();
  }

  @override
  Future logIinWithGoogle() {
    throw UnimplementedError();
  }

}