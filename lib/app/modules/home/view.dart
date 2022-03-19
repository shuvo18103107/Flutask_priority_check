// ignore_for_file: prefer_const_constructors

import 'package:flutask_checker/app/core/utils/extensions.dart';
import 'package:flutask_checker/app/core/values/colors.dart';
import 'package:flutask_checker/app/data/models/task.dart';
import 'package:flutask_checker/app/modules/home/controller.dart';
import 'package:flutask_checker/app/modules/home/widgets/add_card.dart';
import 'package:flutask_checker/app/modules/home/widgets/task_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.all(4.0.wp),
              child: Text(
                'Task Prority Board',
                style:
                    TextStyle(fontSize: 20.0.sp, fontWeight: FontWeight.w700),
              ),
            ),
            Obx(
              () => GridView.count(
                crossAxisCount: 2,
                shrinkWrap: true,
                physics: const ClampingScrollPhysics(),
                children: [
                  ...controller.tasks
                      .map((element) => LongPressDraggable(
                          data: element,
                          onDragStarted: () => controller.changeDeleting(true),
                          onDraggableCanceled: (_, __) =>
                              controller.changeDeleting(false),
                          onDragEnd: (_) => controller.changeDeleting(false),
                          feedback: Opacity(
                              opacity: 0.8, child: TaskCard(task: element)),
                          child: TaskCard(task: element)))
                      .toList(),
                  AddCard()
                ],
              ),
            )
          ],
        ),
      ),
      floatingActionButton: DragTarget<Task>(
        builder: (_, __, ___) {
          return Obx(
            () => FloatingActionButton(
              backgroundColor: controller.deleting.value ? Colors.red : blue,
              onPressed: () {},
              child: Icon(controller.deleting.value ? Icons.delete : Icons.add),
            ),
          );
        },
        onAccept: (Task task) {
          controller.deleteTask(task);
          EasyLoading.showSuccess('Delete Success');
        },
      ),
    );
  }
}
