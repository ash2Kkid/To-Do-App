import 'package:flutter/material.dart';
import 'package:to_do_application/utilities/my_button.dart';

// ignore: must_be_immutable
class DialogBox extends StatelessWidget {
  final controller;

  VoidCallback onSave;
  VoidCallback onCancel;
  
  DialogBox({
    super.key, 
    required this.controller,
    required this.onSave,
    required this.onCancel,
    });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow,
      content: SizedBox(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          //get user input
          TextField(
            controller: controller,
            // ignore: prefer_const_constructors
            decoration: InputDecoration(border: OutlineInputBorder(),
            hintText: "Add a New Task",
            ),
          ),

          //buttons -> save + cancel
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              MyButton(
                text: "Save",
                onPressed: onSave,
                backgroundColor: Colors.yellow,),

              const SizedBox(width: 8),

              MyButton(
                text: "Cancel",
                onPressed: onCancel,
                backgroundColor: Colors.yellow,),
            ],
          )
        ],),
      ),
    );
  }
}