import 'package:study_master/data/user_defaults_interface.dart';

class UserDefaults implements UserDefaultsInterface {
  static const _userName = 'Julio Cesar';

  @override
  String get userName => _userName;

  
}