// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:todo_app/util/buttons.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;
  DialogBox(
      {super.key,
      required this.controller,
      required this.onSave,
      required this.onCancel});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.orange[300],
      content: Container(
          height: 150,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              //text field for user input
              TextField(
                  controller: controller,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Add a new Task")),
              //buttons for save and cancel

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Buttons(
                    text: "Save",
                    onPressed: onSave,
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Buttons(
                    text: "Cancel",
                    onPressed: onCancel,
                  ),
                ],
              ),
            ],
          )),
    );
  }
}
