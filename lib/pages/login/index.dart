import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'login_controller.dart';

class LoginView extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('登录')),
      body: Container(padding: EdgeInsets.all(20),child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(Icons.close),
            TextButton(onPressed: () {
              print(123);
            }, child: Text('切换语言', style: TextStyle(color: Colors.grey[500]),))
        ]),
        Container(
          child: Column(
          children: [
            Text('你好', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16)),
            Text('欢迎登陆UCore', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16))
        ])),
      ]))
    );
  }
}
