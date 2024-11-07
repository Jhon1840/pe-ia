
import 'package:flutter/foundation.dart';

class AuthProvider extends ChangeNotifier {
  String? _token;

  String? get token => _token;

  void setToken(String? newToken) {
    
    print('Token set in AuthProvider: $_token');
    _token = newToken;
    notifyListeners();
  }

  void clearToken() {
    _token = null; 
    print('Token cleared in AuthProvider');
    notifyListeners();
  }

  bool get isAuthenticated => _token != null;
}