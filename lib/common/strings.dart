
import 'package:study_master/common/constants.dart';

enum AppLanguage {
  pt,
  en,
}

class AppStrings {
  static final Map<String, Map<AppLanguage, String>> _localizedStrings = {
    'title': {
      AppLanguage.pt: 'Olá, Mundo!',
      AppLanguage.en: 'Hello, World!',
    },
    'greeting': {
      AppLanguage.pt: 'Bem-vindo ao meu aplicativo!',
      AppLanguage.en: 'Welcome to my app!',
    },
    'buttonLabel': {
      AppLanguage.pt: 'Clique aqui',
      AppLanguage.en: 'Press me',
    },
    'welcome-message': {
      AppLanguage.pt: 'Bem-vindo, ',
      AppLanguage.en: 'Welcome, ',
    },
      'manage-your-study': {
      AppLanguage.pt: 'Gerencie seu estudo',
      AppLanguage.en: 'Manage your Study',
    },
      'study-topics': {
      AppLanguage.pt: 'Tópicos de estudo',
      AppLanguage.en: 'Study topics',
    }
   
  };

  static String getString(String key) {
    return _localizedStrings[key]?[APP_LANGUAGE] ?? 'string not found';
  }
}