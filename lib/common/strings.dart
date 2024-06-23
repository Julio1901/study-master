
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
    },
    'pomodoro-card-description': {
      AppLanguage.pt: 'Potencialize seus estudos com o pomodoro Study master. Tenha foco e atinja seus objetivos.',
      AppLanguage.en: 'Boost your studies with the Study Master Pomodoro. Stay focused and achieve your goals.',
    },
     'notification-card-description': {
      AppLanguage.pt: 'Gerencie seus alertas para o Study Master te ajudar a não esquecer seus estudos.',
      AppLanguage.en: 'Manage your alerts so Study Master can help you stay on top of your studies.',
    },
     'planner-card-description': {
      AppLanguage.pt: 'Use o Calendário para organizar e agendar seus estudos.',
      AppLanguage.en: 'Use the Planner to organize and schedule your studies.',
    },
   
  };

  static String getString(String key) {
    return _localizedStrings[key]?[APP_LANGUAGE] ?? 'string not found';
  }
}