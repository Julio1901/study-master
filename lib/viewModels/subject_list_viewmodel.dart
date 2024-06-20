
import 'package:flutter/material.dart';
import 'package:study_master/models/subject.dart';

class SubjectListViewModel extends ChangeNotifier {
  List<Subject> _subjects = [
    Subject(title: 'English', topicName: 'Languages', imagePath: 'english-logo.png')
  ];

  List<Subject> get subjects => _subjects;


  void addSubject(Subject subject) {
    _subjects.add(subject);
    notifyListeners();
  }


}