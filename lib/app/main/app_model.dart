class MyAppModel {
  // final AuthenticationService _authService =
  //     locator.get<AuthenticationService>();
  var _isAuthenticated = false;

  bool get isAuthenticated => _isAuthenticated;

  Future<void> checkAuth() async {
    // String token = await _authService.getToken();
    // print('token from init is $token');
    // _isAuthenticated = token != null;
  }
}
