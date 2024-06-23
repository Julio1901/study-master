
import 'package:flutter/material.dart';
import 'package:study_master/domain/models/subject.dart';

class SubjectListViewModel extends ChangeNotifier {
  List<Subject> _subjects = [
    Subject(title: 'English', topicName: 'Languages', imagePath: 'english-logo.png'),
    Subject(title: 'Data Struct', topicName: 'Software Engineering', imagePath: 'software-logo.png')
  ];

  List<Subject> get subjects => _subjects;


  void addSubject(Subject subject) {
    _subjects.add(subject);
    notifyListeners();
  }


}