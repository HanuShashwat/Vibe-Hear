import 'package:flutter/material.dart';
import 'package:vibehear/components/button.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;

  DialogBox({
    super.key,
    required this.controller,
    required this.onCancel,
    required this.onSave,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Color.fromRGBO(242, 250, 255, 1),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15)
      ),
      content: Container(
        height: 135,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // get user input
            TextField(
              controller: controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Add a New Key-Word",
                hintStyle: TextStyle(
                    color: Colors.grey[600]
                ),
              ),
            ),

            // buttons -> save + cancel
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                // save button
                Button(text: "Save", onPressed: onSave),

                const SizedBox(width: 8),

                // cancel button
                Button(text: "Cancel", onPressed: onCancel)
              ],
            )
          ],
        ),
      ),
    );
  }
}
