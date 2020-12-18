import 'package:flutter/material.dart';
import 'package:quizzler/quizquestions.dart';



class quick extends StatefulWidget {

  final String userName,surName;

  quick({Key key, this.userName, this.surName}):super(key: key);
  @override
  _State createState() => _State();
}

class _State extends State<quick> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title : Text("quizzler"),
      ),
      body: Column(
        children: [
          TextFormField(

            decoration: InputDecoration(
                border: InputBorder.none,
                labelText:widget.userName,
                hintText: 'Enter Your Name'),
          ),

          TextFormField(
            decoration: InputDecoration(
                border: InputBorder.none,
                labelText: widget.surName,
                hintText: 'Enter Your Name'),

          ),
          RaisedButton(
              child: Text("SignIn"),
              color: Colors.yellow,
              onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => wstApp()));

              })
        ],
      ),
    );
  }
}


