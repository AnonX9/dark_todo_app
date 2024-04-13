import 'package:easy_localization/easy_localization.dart';
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
              semanticsLabel: tr("empty_semantic_label"),
              width: 60.w,
            ),
            Padding(
              padding: EdgeInsets.all(5.sp),
              child: Text(
                "no_list_title".tr(),
                style: textTheme.titleMedium,
              ),
            ),
            Text(
              "add_list_hint".tr(),
              style: textTheme.labelSmall?.copyWith(color: Colors.white54),
            ),
            100.height
          ],
        ),
      ),
    );
  }
}
