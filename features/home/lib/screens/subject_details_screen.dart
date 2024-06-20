import 'package:flutter/material.dart';
import 'package:home/components/card_with_border_rounded.dart';
import 'package:home/screens/home_screen.dart';
import 'package:study_master/viewModels/subject_list_viewmodel.dart';
import 'package:provider/provider.dart';

class SubjectDetailsScreen extends StatelessWidget {
  const SubjectDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Text('Details screen'),
            ),
            ElevatedButton(onPressed: () {
                  Navigator.push(context, 
                  MaterialPageRoute(builder: (context){
                    return  HomeScreen();
                  })
                  );

            }, child: Text('Return to home')),

            Consumer<SubjectListViewModel>(
                    builder: (BuildContext context, SubjectListViewModel subjectListViewModel, Widget? widget) {

                      return Text(subjectListViewModel.subjects.length.toString());


                      // return ListView(
                      //   scrollDirection: Axis.horizontal,
                      //   children: subjectListViewModel.subjects.map((subject) {
                      //     return CardWithBorderRounded(
                      //       title: subject.title,
                      //       subjectField: subject.topicName,
                      //       imageName: subject.imagePath,
                      //     );
                      //   }).toList(),
                      // );
                    },
                  )
            
          ],
        ),
      ),
    );
  }
}