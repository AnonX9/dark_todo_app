import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_starter/src/home/presentation/widgets/pinned_text.dart';
import 'package:flutter_riverpod_starter/src/home/presentation/widgets/task_list_card.dart';
import 'package:flutter_riverpod_starter/utils/extensions/app_extensions.dart';
import 'package:flutter_riverpod_starter/utils/sizer/sizer.dart';

class TasksView extends ConsumerWidget {
  const TasksView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var textTheme = Theme.of(context).textTheme;

    return Scaffold(
      body: Container(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              child: ListView(
                children: [
                  PinnedText(),
                  ListView.builder(
                    shrinkWrap: true,
                    itemCount: 8,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return TaskListCard(
                          title: "Home", color: Colors.deepOrange);
                    },
                  ),
                  50.w.wChild(
                        child: Divider(
                          height: 10,
                          thickness: 5,
                        ),
                      ),
                  ListView.builder(
                    shrinkWrap: true,
                    itemCount: 8,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return TaskListCard(title: "School", color: Colors.blue);
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
