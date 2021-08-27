import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'login_controller.dart';

class LoginView extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('登录')),
      body: Center(child: Text('登录页面')),
    );
  }
}
