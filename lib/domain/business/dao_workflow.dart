
import 'package:study_master/domain/models/subject.dart';

abstract class DaoWorkflow {
  Future<List<Subject>> getSavedSubjects();
  Future<void> saveSubject({required Subject subject});
  Future<void> deleteSubject({required Subject subject});
}