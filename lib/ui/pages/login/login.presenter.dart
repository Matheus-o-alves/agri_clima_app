import 'package:get/get.dart';

abstract class LoginPagePresenter {
  bool isEmailValid(String email);
  bool isPasswordValid(String password);
  var error = RxnString();
  Stream<String?> get navigateToStream;
  Future<void> navigationHomePage();
}
