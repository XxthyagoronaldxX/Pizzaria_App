import 'package:restaurantegulaapp/app/domain/models/user_model.dart';

abstract class IAuthService {
  String login(String email, String password);

  bool requestRegister(UserModel userModel);

  String confirmCode(String code);
}