import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_starter/src/home/presentation/empty_view.dart';
import 'package:flutter_riverpod_starter/utils/sizer/sizer.dart';

class CounterApp extends ConsumerWidget {
  const CounterApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          "title".tr(),
        ),
        leading: Padding(
          padding: EdgeInsets.only(left: 15.sp),
          child: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.menu_open_rounded,
              size: 24.sp,
            ),
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 15.sp),
            child: IconButton.filledTonal(
              onPressed: () {},
              icon: Icon(Icons.search_rounded),
              iconSize: 20.sp,
            ),
          ),
        ],
      ),
      body: EmptyView(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: "tooltip".tr(),
        child: Icon(Icons.add_rounded, size: 28.sp),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(100),
            topRight: Radius.circular(100),
            bottomLeft: Radius.circular(100),
            bottomRight: Radius.circular(25),
          ),
        ),
      ),
    );
  }
}
