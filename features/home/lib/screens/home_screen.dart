// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:study_master/common/strings.dart';
import 'package:study_master/data/user_defaults.dart';
import '../components/card_with_border_rounded.dart';

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
                    fontStyle: FontStyle.normal 
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Text(AppStrings.getString('manage-your-study')
                  , style: TextStyle(
                    fontSize: 25,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold
                  ),),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30, bottom: 15),
                  child: Text(AppStrings.getString('study-topics'), style: TextStyle(
                    fontSize: 22,
                    fontFamily: 'Montserrat',
                    fontStyle: FontStyle.normal 
                  ),),
                ),
                Container(
                  width: double.infinity,
                  height: 200,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                     CardWithBorderRounded(title: 'English', subjectField: 'Languages', imageName: 'english-logo.png',),
                     CardWithBorderRounded(title: 'Data Struct', subjectField: 'Software Engineering', imageName: 'software-logo.png'),
                     CardWithBorderRounded(title: 'Clean Architecture', subjectField: 'iOS', imageName: 'apple-logo.png'),
                     CardWithBorderRounded(title: 'MVVM', subjectField: 'iOS', imageName: 'apple-logo.png'),
                     CardWithBorderRounded(title: 'TODO Verb', subjectField: 'English', imageName: 'english-logo.png'),
                     CardWithBorderRounded(title: 'Possessive adjectives', subjectField: 'English', imageName: 'english-logo.png'),
                     CardWithBorderRounded(title: 'Possessive adjectives', subjectField: 'English', imageName: 'english-logo.png'),
                     CardWithBorderRounded(title: 'Possessive adjectives', subjectField: 'English', imageName: 'english-logo.png'),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      )
    );
  }
}