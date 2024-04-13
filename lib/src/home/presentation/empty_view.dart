import 'package:flutter/material.dart';
import 'package:flutter_riverpod_starter/utils/extensions/app_extensions.dart';
import 'package:flutter_riverpod_starter/utils/sizer/sizer.dart';
import 'package:flutter_svg/flutter_svg.dart';

class EmptyView extends StatelessWidget {
  const EmptyView({super.key});

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              "assets/img/empty.svg",
              semanticsLabel: "Warning Illustration",
              width: 60.w,
            ),
            Padding(
              padding: EdgeInsets.all(5.sp),
              child: Text(
                "There is no list",
                style: textTheme.titleMedium,
              ),
            ),
            Text(
              "Press + to add a List",
              style: textTheme.labelSmall?.copyWith(color: Colors.white54),
            ),
            100.height
          ],
        ),
      ),
    );
  }
}
