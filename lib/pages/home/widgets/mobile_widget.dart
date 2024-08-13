import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/app_bar_widget.dart';
import 'package:flutter_application_1/widgets/app_drawer_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MobileWidget extends StatefulWidget {
  MobileWidget({super.key});

  @override
  State<MobileWidget> createState() => _MobileWidgetState();
}

class _MobileWidgetState extends State<MobileWidget> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  int selectedIndex = 1;
  Map<int, Widget> indexWidgetMap = {
    1: Wrap(
      spacing: 10,
      runSpacing: 10,
      children: List.generate(
          25,
          (index) => SizedBox(
                height: 100.h,
                width: 100.w,
                child: PhysicalModel(
                  borderRadius: BorderRadius.circular(15),
                  elevation: 5,
                  color: Colors.white,
                  shadowColor: Colors.black12,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('5'),
                        const SizedBox(
                          height: 15,
                        ),
                        Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. U',
                          style: TextStyle(fontSize: 8.sp),
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                ),
              )),
    ),
    2: Text('Settings'),
    3: Text('Employes'),
    4: Text('Finances')
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        drawer: Drawer(
          surfaceTintColor: Colors.white,
          backgroundColor: Colors.white,
          child: AppDrawerWidget(
            selectedIndex: selectedIndex,
            onClicked: (index) {
              setState(() {
                selectedIndex = index;
              });
              _scaffoldKey.currentState?.closeDrawer();
            },
          ),
        ),
        body: Center(
            child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: indexWidgetMap[selectedIndex],
        )),
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(60),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12.withOpacity(0.3),
                      spreadRadius: 1,
                      blurRadius: 3,
                      offset: const Offset(3, 0), // changes position of shadow
                    )
                  ]),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          _scaffoldKey.currentState?.openDrawer();
                        },
                        icon: Icon(Icons.menu)),
                    Expanded(child: AppBarWidget()),
                  ],
                ),
              ),
            )));
  }
}
