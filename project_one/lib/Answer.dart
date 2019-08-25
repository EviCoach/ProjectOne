import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String questionText;
  final Function selectHandler;
  Answer(this.selectHandler, this.questionText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(questionText, style: TextStyle(),),
        onPressed: selectHandler,
      ),
    );
  }
}
