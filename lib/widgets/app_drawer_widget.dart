import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppDrawerWidget extends StatelessWidget {
  final int selectedIndex;
  final void Function(int index) onClicked;

  const AppDrawerWidget({
    required this.selectedIndex,
    required this.onClicked,
    super.key,
  });

  Color getColor(int index) {
    return index == selectedIndex ? Colors.indigo : Colors.black;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 150.h,
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                accountName: Text(
                  "Eng_Nadia El_Saih",
                  style: TextStyle(fontWeight: FontWeight.w700),
                ),
                accountEmail: Text("nadiaelsaih@yahoo.com"),
                currentAccountPicture: Stack(
                  alignment: Alignment.center,
                  children: [
                    CircleAvatar(
                      radius: 210.r,
                      backgroundImage: AssetImage("assets/crm.jpg"),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  child: ListTile(
                    onTap: () => onClicked(1),
                    iconColor: getColor(1),
                    textColor: getColor(1),
                    leading: Icon(Icons.home),
                    title: Text('Home'),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  child: ListTile(
                    onTap: () => onClicked(2),
                    iconColor: getColor(2),
                    textColor: getColor(2),
                    leading: Icon(Icons.settings),
                    title: Text('Settings'),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  child: ListTile(
                    onTap: () => onClicked(3),
                    iconColor: getColor(3),
                    textColor: getColor(3),
                    leading: Icon(Icons.person),
                    title: Text('Employes'),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  child: ListTile(
                    onTap: () => onClicked(4),
                    iconColor: getColor(4),
                    textColor: getColor(4),
                    leading: Icon(Icons.attach_money_outlined),
                    title: Text('Finances'),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  child: ListTile(
                    onTap: () => onClicked(5),
                    iconColor: getColor(5),
                    textColor: getColor(5),
                    leading: Icon(Icons.logout),
                    title: Text('Logout'),
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 80,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('All Rights Reserved for @MTM , 2023'),
                SizedBox(height: 10),
                Text('Version 1.0.0'),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
