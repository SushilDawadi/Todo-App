// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class TodoApp extends StatefulWidget {
  const TodoApp({
    super.key,
  });

  @override
  State<TodoApp> createState() => _TodoAppState();
}

class _TodoAppState extends State<TodoApp> {
  //to know what user typed we have TextEditingController
  TextEditingController myController = TextEditingController();

  String greetingMessage = "";
  //method to great user
  void greetUser() {
    String userName = myController.text;
    setState(() {
      greetingMessage = "Hello, " + userName;
    });
  }

  @override
  Widget build(BuildContext context) {
    // to get what user typed ---> we have TextEditingController
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(28.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(greetingMessage),
              //text field for username
              TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Please Enter Username or Email",
                    prefixIcon: Icon(Icons.person),
                    prefixIconColor: Colors.grey),
                controller: myController,
              ),
              //ElevatedButton
              ElevatedButton(onPressed: greetUser, child: Text("Tap"))
            ],
          ),
        ),
      ),
    );
  }
}
