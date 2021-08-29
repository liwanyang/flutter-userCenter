import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'login_controller.dart';

class LoginView extends GetView<LoginController> {
  TextEditingController emailController = TextEditingController();
  void _login() {
    print('登陆');
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('登录')),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.close,size: 20,color: Colors.grey[500],),
              TextButton(onPressed: () {
                print(123);
              }, child: Text('切换语言', style: TextStyle(color: Colors.grey[500])))
          ]),
          Container(
            margin: EdgeInsets.only(top: 40),
            child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('你好', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16)),
              Text('欢迎登陆UCore', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16))
          ])),
          Container(
            margin: EdgeInsets.only(top: 50),
            child: Column(children: [
              TextField(
                controller: emailController,
                decoration: InputDecoration(
                  hintText: '请输入电子邮箱',
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xffB6B6B6), width: 0.5)),
                  )
              ),
              TextField(
                controller: emailController,
                decoration: InputDecoration(
                  hintText: '密码'
                )
              ),
              Container(
                margin: EdgeInsets.only(top: 60),
                width: 500,
                height: 50,
                decoration: BoxDecoration(
                  // gradient: LinearGradient(colors: [Colors.red, Colors.red]),// 渐变色
                  borderRadius: BorderRadius.circular(25)
                ),
                child:  ElevatedButton (
                  style: ButtonStyle(
                    // backgroundColor:null
                  ),
                  onPressed: _login,
                  child: Text('登录')
              ))
            ]))
      ]))
    );
  }
}
