import 'package:flutter/material.dart';
import 'package:flutter_riverpod_starter/utils/extensions/app_extensions.dart';

class PinnedText extends StatelessWidget {
  const PinnedText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 8),
      child: Row(
        children: [
          Icon(
            Icons.push_pin_rounded,
            color: Colors.white38,
            size: 18,
          ),
          10.width,
          Text(
            "pinned".toUpperCase(),
            style:
                TextStyle(fontWeight: FontWeight.w200, color: Colors.white38),
          )
        ],
      ),
    );
  }
}
