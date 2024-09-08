import 'package:rtc_app/core/api/my_api.dart';
import 'package:rtc_app/core/constants.dart';
import 'package:rtc_app/features/login/data/repos/login_repo.dart';

class LoginRepoImpl extends LoginRepo {
  final MyApi myApi;
  LoginRepoImpl(this.myApi);

  @override
  login(String email, String password) {
    Map<String, dynamic> body = {
      'email': email,
      'password': password,
    };
    var response = myApi.postHttp(baseUrl, body);
    print(response.toString());
  }
}
