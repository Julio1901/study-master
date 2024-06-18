// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class CardWithBorderRounded extends StatelessWidget {
  
  const CardWithBorderRounded({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5.0),
      child: Container(
        width: 150,
        height: 100,
        decoration: BoxDecoration(
          color: Color.fromARGB(51, 0, 0, 0),
          borderRadius: BorderRadius.circular(15.0), // Define o arredondamento das bordas
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              'English',
              style: TextStyle(
                color: Colors.white, // Define a cor do texto
                fontSize: 16.0, // Tamanho da fonte
              ),
            ),
            Image.asset('packages/home/lib/assets/images/tony-stark.png', width: 120, height: 120,),
          ],
        ),
      ),
    );
  }
}