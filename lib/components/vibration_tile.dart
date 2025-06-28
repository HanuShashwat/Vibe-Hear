import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class VibrationTile extends StatelessWidget {
  final String keyWord;
  final bool wordOn;
  final Function(bool?)? onChanged;
  Function(BuildContext)? deleteFunction;

  VibrationTile({
    super.key,
    required this.keyWord,
    required this.wordOn,
    required this.onChanged,
    required this.deleteFunction,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0, right: 25, top: 25),
      child: Slidable(
        endActionPane: ActionPane(
            motion: StretchMotion(),
            children: [
              SlidableAction(
                  onPressed: deleteFunction,
                icon: Icons.delete,
                backgroundColor: Color.fromRGBO(222, 100, 100, 1),
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(12),
                    bottomRight: Radius.circular(12)
                ),
              )
            ],
        ),
        child: Container(
          padding: EdgeInsets.all(24),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12)
          ),
          child: Row(
            children: [
              // checkbox
              Checkbox(
                  value: wordOn,
                  onChanged: onChanged,
                activeColor: Color.fromRGBO(8, 129, 208, 1),
              ),
        
              // task name
              Text(
                keyWord,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey.shade800,
                  decoration: !wordOn ? TextDecoration.lineThrough : TextDecoration.none
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
