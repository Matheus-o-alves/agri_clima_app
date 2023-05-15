import 'package:agri_clima_app/presentation/presenters/getx_login_page_presenter.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late GetXLoginPresenter sut;

  setUp(() {
    sut = GetXLoginPresenter();
  });

  test('Should return false if email is empty', () {
    expect(sut.isEmailValid(''), isFalse);
  });

  test('Should return false if email is invalid', () {
    expect(sut.isEmailValid('invalid_email'), isFalse);
  });

  test('Should return true if email is valid', () {
    expect(sut.isEmailValid('valid_email@test.com'), isTrue);
  });

  test('Should return false if password is empty', () {
    expect(sut.isPasswordValid(''), isFalse);
  });

  test('Should return false if password is less than 6 characters', () {
    expect(sut.isPasswordValid('12345'), isFalse);
  });

  test('Should return true if password is valid', () {
    expect(sut.isPasswordValid('valid_password'), isTrue);
  });
}
