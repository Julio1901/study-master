import 'package:flutter/material.dart';
import 'package:study_master/viewModels/study_aid_suite_list_viewmodel.dart';

class MainViewModel extends ChangeNotifier{
  final StudyAidSuiteListViewmodel _studyAidSuiteListViewmodel = StudyAidSuiteListViewmodel();

  StudyAidSuiteListViewmodel get studyAidSuiteListViewmodel  => _studyAidSuiteListViewmodel;

}