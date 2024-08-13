import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/home/home_page.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ScreenUtil.ensureScreenSize();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    if (kIsWeb && defaultTargetPlatform == TargetPlatform.android) {
      print('>>>>>> using web');
    } else if (defaultTargetPlatform == TargetPlatform.android ||
        defaultTargetPlatform == TargetPlatform.iOS) {
      print('>>>>>> using mobile');
    } else if (defaultTargetPlatform == TargetPlatform.linux) {
      print('>>>>>> using linux');
    }

    return ScreenUtilInit(
      designSize: const Size(360, 690), // تحديد حجم التصميم الأساسي
      minTextAdapt: true, // تمكين التكيف النصي الأدنى
      splitScreenMode: true, // تمكين وضع تقسيم الشاشة

      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          scrollBehavior: AppScrollBehaviour(),
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            //using factor
            textTheme: Typography.englishLike2018.apply(fontSizeFactor: 0.3.sp),
            useMaterial3: true,
          ),
          home: ScreenUtilInit(
            child: const MyHomePage(title: 'Flutter Demo Home Page'),
          ),
        );
      },
    );
  }
}

class AppScrollBehaviour extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
      };
}




// import 'dart:ui';

// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_application_1/pages/home/home_page.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     if (kIsWeb && defaultTargetPlatform == TargetPlatform.android) {
//       print('>>>>>> uesing web');
//     }

//     if (defaultTargetPlatform == TargetPlatform.android ||
//         defaultTargetPlatform == TargetPlatform.iOS) {
//       print('>>>>>> uesing mobile');
//     }

//     if (defaultTargetPlatform == TargetPlatform.linux) {
//       print('>>>>>> uesing linux');
//     }
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Flutter Demo',
//       scrollBehavior: AppScrollBehaviour(),
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),
//       home: const MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }

// class AppScrollBehaviour extends MaterialScrollBehavior {
//   @override
//   Set<PointerDeviceKind> get dragDevices => {
//         PointerDeviceKind.touch,
//         PointerDeviceKind.mouse,
//       };
// }
