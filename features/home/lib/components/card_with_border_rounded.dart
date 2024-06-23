// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CardWithBorderRounded extends StatelessWidget {

final String title; 
final String subjectField;
final String imageName;

  const CardWithBorderRounded({super.key, required this.title, required this.subjectField, required this.imageName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5.0),
      child: Container(
        width: 150,
        height: 100,
        decoration: BoxDecoration(
          color: Color.fromRGBO(107, 191, 251, 0.145),
          borderRadius: BorderRadius.circular(15.0), 
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 2, right: 2),
              child: Text(
                title,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: Color.fromARGB(255, 79, 80, 81),
                  fontSize: 16.0,
                  fontFamily: 'Montserrat',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15.0),
                child: Image.asset('packages/home/lib/assets/images/${imageName}', width: 120, height: 120,  fit: BoxFit.cover
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5.0, left: 2, right: 2),
              child: Text(subjectField, 
              maxLines: 1,
                overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w600
              ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}