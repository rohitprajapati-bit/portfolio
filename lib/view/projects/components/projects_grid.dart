import 'package:flutter/material.dart';
import 'package:flutter_portfolio/view/projects/components/project_info.dart';
import 'package:get/get.dart';
import '../../../model/project_model.dart';
import '../../../res/constants.dart';
import '../../../view model/getx_controllers/projects_controller.dart';

class ProjectGrid extends StatelessWidget {
  final int crossAxisCount;
  final double ratio;

  ProjectGrid({super.key, this.crossAxisCount = 3, this.ratio = 1.3});

  final controller = Get.put(ProjectController());

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      if (controller.hovers.length != projectList.length) {
        controller.hovers.assignAll(List.filled(projectList.length, false));
      }

      return GridView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        itemCount: projectList.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxisCount, childAspectRatio: ratio),
        itemBuilder: (context, index) {
          if (index < controller.hovers.length) {
            return AnimatedContainer(
                duration: const Duration(milliseconds: 200),
                margin: const EdgeInsets.symmetric(
                    vertical: defaultPadding, horizontal: defaultPadding),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    gradient: const LinearGradient(colors: [
                      Colors.pinkAccent,
                      Colors.blue,
                    ]),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.pink,
                        offset: const Offset(-2, 0),
                        blurRadius: controller.hovers[index] ? 20 : 3,
                      ),
                      BoxShadow(
                        color: Colors.blue,
                        offset: const Offset(2, 0),
                        blurRadius: controller.hovers[index] ? 20 : 3,
                      ),
                    ]),
                child: ProjectStack(index: index));
          } else {
            return Container();
          }
        },
      );
    });
  }
}
