import 'package:flutter/material.dart';
import 'QuizQus.dart';


class questions{
 var question = [];
 var Answer = [];

questions(this.question,this.Answer);
}



class wstApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return wstJ();
  }
}
class wstJ extends StatefulWidget {
  @override
  _wstJState createState() => _wstJState();
}

class _wstJState extends State<wstJ> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("wst"),
      ),
      body: RaisedButton(
        color: Colors.blue,
        onPressed: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => quid()));
        },
      ),
    );
  }
}
