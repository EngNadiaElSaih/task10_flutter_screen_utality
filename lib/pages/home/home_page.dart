import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/home/widgets/desktop_widget.dart';
import 'package:flutter_application_1/pages/home/widgets/mobile_widget.dart';
import 'package:flutter_application_1/widgets/app_builder_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: AppBuilderWidget(
            desktop: (ctx) => DesktopWidget(),
            tablet: (ctx) => DesktopWidget(),
            mobile: (ctx) => MobileWidget()));
  }
}
