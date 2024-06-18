// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CardWithBorderRounded extends StatelessWidget {

final String title; 

  const CardWithBorderRounded({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5.0),
      child: Container(
        width: 150,
        height: 100,
        decoration: BoxDecoration(
          color: Color.fromARGB(51, 0, 0, 0),
          borderRadius: BorderRadius.circular(15.0), 
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'English',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16.0, // Tamanho da fonte
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15.0),
                child: Image.asset('packages/home/lib/assets/images/tony-stark.png', width: 120, height: 120,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}