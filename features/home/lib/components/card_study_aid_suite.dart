import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class CardStudyAidSuite extends StatelessWidget {
  String title;
  String description;
  String iconName;

  CardStudyAidSuite(
      {super.key,
      required this.title,
      required this.description,
      required this.iconName});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 220,
      height: 280,
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 255, 242, 242),
          border: Border.all(
            color: const Color.fromARGB(255, 255, 248, 233).withOpacity(0.3),
            width: 1.5,
          ),
          borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Column(
          children: [
            ClipRRect(
              child: Container(
                width: 190,
                height: 186,
                decoration: const BoxDecoration(
                    gradient: RadialGradient(
                      colors: [
                        Colors.white, 
                        Color.fromARGB(255, 236, 191, 97), 
                      ],
                      stops: [
                        0.0,
                        1.0
                      ], 
                      center: Alignment.center,
                      radius: 0.6, 
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(16))),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                          child: Container(
                            width: 143,
                            height: 30,
                            decoration: BoxDecoration(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(16)),
                              border: Border.all(
                                color: Colors.white.withOpacity(0.3),
                                width: 1.5,
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  title,
                                  style: const TextStyle(
                                      fontSize: 20,
                                      color: Color.fromARGB(255, 24, 147, 240),
                                      fontFamily: 'Montserrat',
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: Image.asset(
                          'assets/images/$iconName',
                          width: 140,
                        ))
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: SizedBox(
                width: 190,
                child: Text(
                  textAlign: TextAlign.center,
                  description,
                  style: const TextStyle(
                      fontSize: 12,
                      color: Colors.black,
                      fontFamily: 'Montserrat',
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w600),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
