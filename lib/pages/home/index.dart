import 'package:flutter/material.dart';
import 'package:fultter_project/common/routers/app_pages.dart';
import 'package:get/get.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Center(
            child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
          onPressed: () {
            Get.toNamed(AppRoutes.Login);
          },
          child: Text('登录'),
        ),
        TextButton(
          onPressed: () {
            Get.toNamed(AppRoutes.Register);
          },
          child: Text('注册'),
        ),
      ],
    )));
  }
}
