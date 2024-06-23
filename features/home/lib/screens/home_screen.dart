// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:home/components/card_study_aid_suite.dart';
import 'package:home/screens/subject_details_screen.dart';
import 'package:study_master/common/strings.dart';
import 'package:study_master/data/user_defaults.dart';
import 'package:study_master/domain/models/subject.dart';
import 'package:study_master/viewModels/main_view_model.dart';
import 'package:study_master/viewModels/subject_list_viewmodel.dart';
import '../components/card_with_border_rounded.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  final userDefaults = UserDefaults();

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15),
        child: Container(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '${AppStrings.getString('welcome-message')} ${userDefaults.userName}',
                style: TextStyle(
                    fontSize: 15,
                    color: Color.fromARGB(255, 89, 88, 88),
                    fontFamily: 'Montserrat',
                    fontStyle: FontStyle.normal),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Text(
                  AppStrings.getString('manage-your-study'),
                  style: TextStyle(
                      fontSize: 25,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30, bottom: 15),
                child: Stack(children: [
                  Stack(children: [
                    Transform.translate(
                      offset: Offset(6, -10),
                      child: Container(
                        width: 197.5,
                        height: 30,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 234, 202, 255),
                            borderRadius: BorderRadius.circular(3)),
                        transform: Matrix4.skewX(-0.4),
                      ),
                    ),
                    Container(
                      width: 200,
                      height: 30,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 155, 119, 254),
                          borderRadius: BorderRadius.circular(3)),
                      transform: Matrix4.skewX(-0.3),
                    ),
                  ]),
                  Transform.translate(
                    offset: Offset(2, -14),
                    child: Text(
                      AppStrings.getString('study-topics'),
                      style: TextStyle(
                          fontSize: 29,
                          fontFamily: 'Montserrat',
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 255, 247, 94)),
                    ),
                  ),
                ]),
              ),
              SizedBox(
                  width: double.infinity,
                  height: 200,
                  child: Consumer<SubjectListViewModel>(
                    builder: (BuildContext context,
                        SubjectListViewModel subjectListViewModel,
                        Widget? widget) {
                      return ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemCount: subjectListViewModel.subjects.length,
                        separatorBuilder: (context, _) => SizedBox(width: 5),
                        itemBuilder: (context, index) => CardWithBorderRounded(
                            title: subjectListViewModel.subjects[index].title,
                            subjectField:
                                subjectListViewModel.subjects[index].topicName,
                            imageName:
                                subjectListViewModel.subjects[index].imagePath),
                      );
                    },
                  )),
              // Consumer<SubjectListViewModel>(
              //   builder: (BuildContext context,
              //       SubjectListViewModel subjectListViewModel, Widget? widget) {
              //     return ElevatedButton(
              //         onPressed: () {
              //           subjectListViewModel.addSubject(Subject(
              //               title: 'Data Struct',
              //               topicName: 'Software Engineering',
              //               imagePath: 'software-logo.png'));
              //         },
              //         child: Text('Press me'));
              //   },
              // ),
              // ElevatedButton(
              //     onPressed: () {
              //       Navigator.push(context,
              //           MaterialPageRoute(builder: (context) {
              //         return SubjectDetailsScreen();
              //       }));
              //     },
              //     child: Text('Go to details screen')),
              SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: Provider.of<MainViewModel>(context)
                      .studyAidSuiteListViewmodel
                      .getStudyAuidSuiteList()
                      .map((item) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: CardStudyAidSuite(
                          title: item.title,
                          description: item.description,
                          iconName: item.iconName),
                    );
                  }).toList(),
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
