import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            'Welcome To Our App',
            style: TextStyle(
              fontSize: 14.sp,
            ),
          ),
        ),
        IconButton(onPressed: () {}, icon: Icon(Icons.logout))
      ],
    );
  }
}
