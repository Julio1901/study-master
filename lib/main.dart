import 'package:flutter/material.dart';
import 'package:home/screens/home_screen.dart';
import 'package:provider/provider.dart';
import 'package:study_master/viewModels/main_view_model.dart';
import 'package:study_master/viewModels/subject_list_viewmodel.dart';


void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => SubjectListViewModel()),
        ChangeNotifierProvider(create: (context) => MainViewModel()), // Adicione outras ViewModels aqui
      ],
      child: const MyApp(),
    ),
  );
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomeScreen()
    );
  }
}

