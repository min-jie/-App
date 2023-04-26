import 'package:flutter/material.dart';
import 'package:flutter_application/my_flutter_app_icons.dart';
import 'package:flutter_application/page/homePage/bottomNav/home_index.dart';
import 'package:flutter_application/page/homePage/list/passwordSetting.dart';

import '../bottomNav/hospitalized.dart';
import '../bottomNav/message.dart';
import '../bottomNav/peopleService.dart';
import '../bottomNav/personal.dart';
import 'appSetting.dart';
import 'logout.dart';

class AccountSettingPage extends StatefulWidget {
  const AccountSettingPage({super.key, required this.title});

  final String title;

  @override
  State<AccountSettingPage> createState() => _AccountSettingPageState();
}

class _AccountSettingPageState extends State<AccountSettingPage> {
  int _selectedIndex = 0;
  int tappedIndex = 0;
  int crossAxisCellCount = 4;
  int mainAxisCellCount = 4;
  final TextEditingController _searchController = TextEditingController();

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final TextStyle textStyle = theme.textTheme.bodyMedium!;
    final List<Widget> aboutBoxChildren = <Widget>[
      const SizedBox(height: 24),
    ];

    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 255, 255, 1),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Color.fromRGBO(255, 255, 255, 1)),
        backgroundColor: Color.fromRGBO(172, 222, 166, 1),
        title: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            text: "帳號設定",
            style: TextStyle(
              fontSize: 20,
              color: Color.fromRGBO(56, 129, 47, 1),
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(height: 20),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: '個人化',
            backgroundColor: Color.fromRGBO(255, 255, 255, 1),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: '亞東訊息',
            backgroundColor: Color.fromRGBO(255, 255, 255, 1),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '首頁',
            backgroundColor: Color.fromRGBO(255, 255, 255, 1),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_hospital),
            label: '住院專區',
            backgroundColor: Color.fromRGBO(255, 255, 255, 1),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.heat_pump_sharp),
            label: '便民服務',
            backgroundColor: Color.fromRGBO(255, 255, 255, 1),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedFontSize: 18,
        unselectedItemColor: Color.fromRGBO(88, 103, 86, 1),
        selectedItemColor: Color.fromRGBO(248, 177, 172, 1),
        onTap: _onItemTapped,
      ),
    );
  }
}
