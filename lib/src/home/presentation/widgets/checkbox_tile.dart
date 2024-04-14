import 'package:flutter/material.dart';

class CheckBoxTile extends StatelessWidget {
  const CheckBoxTile(
      {super.key, required this.isCompleted, required this.description});

  final bool isCompleted;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          height: 24,
          child: Checkbox(
            value: isCompleted,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            splashRadius: 50,
            onChanged: (value) {
              print("object");
            },
          ),
        ),
        Flexible(
          child: Text(
            description,
            overflow: TextOverflow.ellipsis,
          ),
        )
      ],
    );
  }
}
