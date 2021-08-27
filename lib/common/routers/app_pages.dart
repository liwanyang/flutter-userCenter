import 'package:fultter_project/pages/home/index.dart';
import 'package:fultter_project/pages/login/bingings.dart';
import 'package:fultter_project/pages/login/index.dart';
import 'package:fultter_project/pages/register/index.dart';

import 'package:get/get.dart';

part 'app_routers.dart';

class AppPages {
  static const INITIAL = AppRoutes.Home;
  static List<GetPage> routes = [
    // 登录页面
    GetPage(
      binding: LoginBinding(),
      name: AppRoutes.Login,
      page: () => LoginView(),
    ),
    // 注册页面
    GetPage(
      name: AppRoutes.Register,
      page: () => RegisterView(),
    ),

    // 从首页入口进入；
    GetPage(
      name: AppRoutes.Home,
      page: () => HomeView(),
      // binding: HomeBinding(),
      // children: [
      //   GetPage(
      //     name: AppRoutes.List,
      //     page: () => ListIndexView(),
      //     children: [
      //       GetPage(
      //         name: AppRoutes.Detail,
      //         page: () => DetailView(),
      //       ),
      //       GetPage(
      //         name: AppRoutes.Detail_ID,
      //         page: () => DetailView(),
      //         transition: Transition.downToUp,
      //       ),
      //     ],
      //   ),
      // ],
    ),
  ];
  // static final unknownRoute = GetPage(
  //   name: AppRoutes.NotFound,
  //   page: () => NotfoundView(),
  // );
}
