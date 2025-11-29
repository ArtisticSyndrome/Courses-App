import 'package:shared_preferences/shared_preferences.dart';

class SharedPreference {
  static const String _fullNameKey = 'full_name';
  static const String _emailKey = 'email';
  static const String _contactNoKey = 'contact_no';
  static const String _genderKey = 'gender';
  static const String _passwordKey = 'password';

  static Future<void> saveUserData({
    required String fullName,
    required String email,
    required String contactNo,
    required String gender,
    required String password,
  }) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_fullNameKey, fullName);
    await prefs.setString(_emailKey, email);
    await prefs.setString(_contactNoKey, contactNo);
    await prefs.setString(_genderKey, gender);
    await prefs.setString(_passwordKey, password);
  }

  static Future<String?> getFullName() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(_fullNameKey);
  }

  static Future<String?> getEmail() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(_emailKey);
  }

  static Future<String?> getContactNo() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(_contactNoKey);
  }

  static Future<String?> getGender() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(_genderKey);
  }

  static Future<String?> getPassword() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(_passwordKey);
  }

  static Future<Map<String, String?>> getAllUserData() async {
    return {
      'fullName': await getFullName(),
      'email': await getEmail(),
      'contactNo': await getContactNo(),
      'gender': await getGender(),
      'password': await getPassword(),
    };
  }

  static Future<void> clearAllUserData() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(_fullNameKey);
    await prefs.remove(_emailKey);
    await prefs.remove(_contactNoKey);
    await prefs.remove(_genderKey);
    await prefs.remove(_passwordKey);
  }

  static Future<bool> hasUserData() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.containsKey(_fullNameKey);
  }
}
