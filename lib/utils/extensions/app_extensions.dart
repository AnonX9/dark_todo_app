import 'package:flutter/material.dart';

extension SizedBoxExtention on num {
  SizedBox get height => SizedBox(
        height: toDouble(),
      );
  SizedBox get width => SizedBox(
        width: toDouble(),
      );
  SizedBox hChild({required Widget child}) => SizedBox(
        height: toDouble(),
        child: child,
      );
  SizedBox wChild({required Widget child}) => SizedBox(
        width: toDouble(),
        child: child,
      );
  SizedBox square({required Widget child}) => SizedBox(
        width: toDouble(),
        height: toDouble(),
        child: child,
      );
}
