import 'package:flutter/cupertino.dart';

abstract class AuthRepo {
  Future logIinWithGoogle();
  Future logIinWithFaceBooke();
  Future completeInformation({
    @required String name,
    @required String phone,
    @required String address,
  });
}
