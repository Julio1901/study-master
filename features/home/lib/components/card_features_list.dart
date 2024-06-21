import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CardFeaturesList extends StatelessWidget {
  String title;
  String description;
  IconData icon;

  CardFeaturesList(
      {super.key,
      required this.title,
      required this.description,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
        width: 220,
        height: 270,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(16)
        ),
      ),
      Container(
        width: 220,
        color: Colors.blue,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
                //Esse container que não está respeitando o tamanho
                child: Container(
                  width: 190,
                  height: 186,
                  decoration: const BoxDecoration(
                      gradient: RadialGradient(
                        colors: [
                          Colors.white, // Cor no centro
                          Color.fromARGB(255, 236, 191, 97), // Cor nas bordas
                        ],
                        stops: [0.0, 1.0], // Define os pontos de parada do degradê
                        center: Alignment.center, // Centro do degradê
                        radius: 0.6, // Raio do degradê
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
                                 borderRadius: const BorderRadius.all(Radius.circular(16)),
                                 border: Border.all(
                                  color: Colors.white.withOpacity(0.3),
                                  width: 1.5,
                                ),
                                //  color: Colors.black12
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
                                        fontWeight: FontWeight.w600
                                        ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: Image.asset('assets/images/pomodoro-icon-transparent.png', width: 140,))
                      // Text(description),
                      // Icon(icon)
                    ],
                  ),
                ),
              ),
          ],
        ),
      ),
      ],

  
    );
  }
}
