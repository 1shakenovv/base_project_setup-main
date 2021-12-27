import 'package:base_setup/app/main/navigator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'app_model.dart';
import 'notification_navigator.dart';

class MyApp extends StatelessWidget {
  final MyAppModel model;
  static final mainNavigation = Navigation();

  MyApp({required this.model});
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.dark,
      child: MaterialApp(
        title: 'Title',
        debugShowCheckedModeBanner: false,
        navigatorKey: GlobalVariable.navState,
        routes: mainNavigation.routes,
        initialRoute: mainNavigation.initialRoute(model.isAuthenticated),
      ),
    );
  }
}
