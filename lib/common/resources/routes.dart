import 'package:demo_two/common/resources/app_strings.dart';
import 'package:demo_two/presentation/to_do_list/page/todo_list_view.dart';
import 'package:flutter/material.dart';

import '../../app_config/app_environments.dart';
import '../../di/di.dart';
import '../../presentation/splash/page/splash_view.dart';

class RouteName {
  //property owner
  static const String routeSplash = '/';
  static const String routeToDoListView = '/list-view-route';
}

class Routes {
  static Route<dynamic> getRoute(RouteSettings routeSettings) {

    switch (routeSettings.name) {
      case RouteName.routeSplash:
        return MaterialPageRoute(builder: (_) => const SplashView());
      case RouteName.routeToDoListView:
        // initAuthenticationModule();
        initTodoModule();
        return MaterialPageRoute(builder: (_) => const TodoListView());
      default:
        return undefinedRoute();
    }
  }

  static Route<dynamic> undefinedRoute() {
    return MaterialPageRoute(
        builder: (_) => Scaffold(
              appBar: AppBar(
                title: Text(AppEnvironments.appName),
              ),
              body: const Center(
                child: Text(AppStrings.routName_defaultRoute_title),
              ),
            ));
  }
}
