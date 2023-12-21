import 'package:restaurantegulaapp/app/domain/models/user_model.dart';
import 'package:restaurantegulaapp/app/domain/services/auth_service.dart';

class AuthServiceImpl implements IAuthService {
  @override
  String confirmCode(String code) {
    throw UnimplementedError();
  }

  @override
  String login(String email, String password) {
    throw UnimplementedError();
  }

  @override
  bool requestRegister(UserModel userModel) {
    throw UnimplementedError();
  }
}