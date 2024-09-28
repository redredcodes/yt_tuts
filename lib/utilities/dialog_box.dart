import 'package:flutter/material.dart';
import 'package:yt_tuts/utilities/my_button.dart';

class DialogBox extends StatelessWidget {
   DialogBox({super.key, required this.controller, required this.onSave, required this.onCancel});

  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;


  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: const EdgeInsets.all(0),
      content: Container(
        decoration: BoxDecoration(
          color: Colors.yellow[300],
          borderRadius: BorderRadius.circular(5),
        ),
        height: 150,
        child: Column(
          children: [
            // get user input
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: controller,
                decoration: const InputDecoration(
                    hintText: 'Add a new task...',
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black))),
              ),
            ),

            // button-> save + cancel
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  // save button
                  MyButton(text: 'Save', onPressed: onSave),
                  SizedBox(
                    width: 7,
                  ),
                  // cancel button
                  MyButton(text: 'Cancel', onPressed: onCancel)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
