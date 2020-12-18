import 'package:flutter/material.dart';
import 'package:quizzler/quiz.dart';

void main() {
  runApp(MaterialApp(
      home:Hai()));
}



class Hai extends StatefulWidget {
  @override
  _HaiState createState() => _HaiState();
}

class _HaiState extends State<Hai> {

  TextEditingController firstName = TextEditingController();
  TextEditingController lastName = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("quiz"),
      ),
      body: Column(
        children: [
          Text(
            "This is where the question text will go.",
            textAlign: TextAlign.left,
            style: TextStyle(
              fontSize: 17.0,
              color: Colors.black,
            ),
          ),
          Expanded(
            child: Column(
              children: [
                RaisedButton(
                  child: Text("button1"),
                  onPressed: () {
                    print("button1 pressed");
                  },
                ),
                RaisedButton(
                  child: Text("button2"),
                  onPressed: () {
                    print("button2 pressed");
                  },
                ),
                RaisedButton(
                  child: Text("button3"),
                  onPressed: () {
                    print("button3 pressed");
                  },
                ),
                Center(
                  child: TextFormField(
                    controller: firstName,
                    scrollPadding: EdgeInsets.all(8.0),
                    //padding:  EdgeInsets.all(8),
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        labelText: 'Enter First Name',
                        hintText: 'Enter Your Name'),
                    //textAlign: Text("write"),
                  ),
                ),
                TextFormField(
                  controller: lastName,
                  scrollPadding: EdgeInsets.all(8.0),
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      labelText: 'Enter Last Name',
                      hintText: 'Enter Your Name'),
                ),
                RaisedButton(
                  child: Text('Save'),
                  color: Colors.green,
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) => quick(userName:firstName.text,surName:lastName.text)));
                    print('Saved details');
                    //context :Text(msgField.text)
                    //content: Text(msgField.text)
                  },
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
