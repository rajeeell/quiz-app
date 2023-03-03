import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: selectHandler,
        style: ElevatedButton.styleFrom(
          foregroundColor:
              Colors.pinkAccent, //change background color of button
          backgroundColor: Colors.yellow, //change text color of button
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
          elevation: 15.0,
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Text(
            answerText,
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
