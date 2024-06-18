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
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Text(AppStrings.getString('manage-your-study')
                  , style: TextStyle(
                    fontSize: 25,
                  ),),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Text(AppStrings.getString('study-topics'), style: TextStyle(
                    fontSize: 22
                  ),),
                ),
                Container(
                  width: double.infinity,
                  height: 200,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                     CardWithBorderRounded(),
                     CardWithBorderRounded(),
                     CardWithBorderRounded(),
                     CardWithBorderRounded(),
                     CardWithBorderRounded(),
                     CardWithBorderRounded(),
                     CardWithBorderRounded(),
                     CardWithBorderRounded(),
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