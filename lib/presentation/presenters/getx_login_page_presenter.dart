import 'package:get/get.dart';

import '../../ui/pages/login/login.presenter.dart';

class GetXLoginPresenter extends GetxController implements LoginPagePresenter {
  var error = RxnString();

  bool isEmailValid(String email) {
    if (email.isEmpty) {
      error.value = 'E-mail não pode ser vazio';
      return false;
    } else if (!email.contains('@')) {
      error.value = 'E-mail inválido';
      return false;
    } else {
      error.value = null;
      return true;
    }
  }

  bool isPasswordValid(String password) {
    if (password.isEmpty) {
      error.value = 'Senha não pode ser vazia';
      return false;
    } else if (password.length < 6) {
      error.value = 'Senha deve conter pelo menos 6 caracteres';
      return false;
    } else {
      error.value = null;
      return true;
    }
  }
}
