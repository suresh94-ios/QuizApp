import 'package:flutter/material.dart';

import 'quizquestions.dart';




class quid extends StatelessWidget {
   List<String> entries = <String>['A', 'B', 'C','D','E','A', 'B', 'C','D','E'];
   List<int> colorCodes = <int>[600, 500, 100,200,700,600, 500, 100,200,700];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("listView"),
      ),

      body:
      ListView.builder(
        //scrollDirection:Axis.vertical,
         // padding: const EdgeInsets.all(8),
          itemCount: entries.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              height: 50,
              color: Colors.amber[colorCodes[index]],
              child: Center(child: Text('Entry ${entries[index]}')),
            );
          }
      ),
    );
  }
}


