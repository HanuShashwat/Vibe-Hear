import 'package:flutter/material.dart';
import 'package:vibehear/components/dialog_box.dart';
import 'package:vibehear/components/vibration_tile.dart';

class VibrationPage extends StatefulWidget {
  const VibrationPage({super.key});

  @override
  State<VibrationPage> createState() => _VibrationPageState();
}

class _VibrationPageState extends State<VibrationPage> {

  // text controller
  final _controller = TextEditingController();

  // List of keywords
  List keyWords = [
    ["Help (Example)", true],
    ["Beta (Example)", true],
  ];

  // checkbox was tapped
  void checkBoxChanged(bool? value, int index) {
    setState(() {
      keyWords[index][1] = !keyWords[index][1];
    });
  }

  // create new key word
  void createNewWord() {
    showDialog(context: context,
        builder: (context) {
      return DialogBox(
        controller: _controller,
        onSave: saveNewWord,
        onCancel: () => Navigator.of(context).pop(),
      );
        },
    );
  }

  // save new word
  void saveNewWord() {
    setState(() {
      keyWords.add([_controller.text, true]);
      _controller.clear();
    });
    Navigator.of(context).pop();
  }

  // delete Key Word
  void deleteKeyWord(int index) {
    setState(() {
      keyWords.removeAt(index);
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: createNewWord,
        backgroundColor: Color.fromRGBO(8, 129, 208, 1),
        child: Icon(
            Icons.add,
          color: Colors.white,
        ),

      ),
      backgroundColor: Color.fromRGBO(242, 250, 255, 1),
      body: ListView.builder(
        itemCount: keyWords.length,
        itemBuilder: (context, index) {
          return VibrationTile(
              keyWord: keyWords[index][0],
              wordOn: keyWords[index][1],
              onChanged: (value) => checkBoxChanged(value, index),
            deleteFunction: (context) => deleteKeyWord(index),
          );
        }
      ),
    );
  }
}
