import 'package:flutter/material.dart';
import 'package:flutter_riverpod_starter/src/home/presentation/widgets/checkbox_tile.dart';

class TaskListCard extends StatelessWidget {
  const TaskListCard({super.key, required this.title, required this.color});

  final String title;
  final Color color;

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;

    int counter = 1;

    return Card(
      margin: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25),
      ),
      color: Colors.white24,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            title: Text(title),
            leading: Transform.scale(
              scale: 0.45,
              child: CircleAvatar(
                backgroundColor: color,
              ),
            ),
          ),
          LimitedBox(
            maxHeight: 200,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 5,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 14),
                      child: CheckBoxTile(
                          isCompleted: false, description: "description"),
                    );
                  },
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 18),
            child: Text("+$counter tasks"),
          )
        ],
      ),
    );
  }
}
