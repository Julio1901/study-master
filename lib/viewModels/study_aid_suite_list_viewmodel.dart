import 'package:study_master/common/strings.dart';
import 'package:study_master/domain/models/study_aid_suite.dart';

class StudyAidSuiteListViewmodel {
  final List<StudyAidSuite> _studyAidSuiteList = [
    StudyAidSuite(title: 'Pomodoro', description: AppStrings.getString('pomodoro-card-description'), iconName: 'pomodoro-icon-transparent.png'),
    StudyAidSuite(title: 'Notifications', description: AppStrings.getString('notification-card-description'), iconName: 'notifications-icon-transparent.png'),
    StudyAidSuite(title: 'Planner', description: AppStrings.getString('planner-card-description'), iconName: 'planner-icon-transparent.png'),
  ];

  List<StudyAidSuite> getStudyAuidSuiteList() => _studyAidSuiteList;

}