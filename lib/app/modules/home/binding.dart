import 'package:flutask_checker/app/data/providers/task/provider.dart';
import 'package:flutask_checker/app/data/services/storage/repository.dart';
import 'package:flutask_checker/app/modules/home/controller.dart';
import 'package:get/get.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => HomeController(
          taskRepository: TaskRepository(
        taskprovider: TaskProvider(),
      )),
    );
  }
}
