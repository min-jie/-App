// 便民服務

import 'package:flutter/material.dart';
import 'package:flutter_application/my_flutter_app_icons.dart';
import 'package:flutter_application/page/homePage/bottomNav/home_index.dart';

class PasswordSettingPage extends StatefulWidget {
  const PasswordSettingPage({super.key, required this.title});

  final String title;

  @override
  State<PasswordSettingPage> createState() => _PasswordSettingPageState();
}

class _PasswordSettingPageState extends State<PasswordSettingPage> {
  int _selectedIndex = 0;
  int tappedIndex = 0;
  int crossAxisCellCount = 4;
  int mainAxisCellCount = 4;
  final TextEditingController _searchController = TextEditingController();

  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      '個人化',
      style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
    ),
    Text(
      '亞東訊息',
      style: optionStyle,
    ),
    Text(
      '首頁',
      style: optionStyle,
    ),
    Text(
      '住院專區',
      style: optionStyle,
    ),
    Text(
      '便民服務',
      style: optionStyle,
    ),
  ];

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
      RichText(
        text: TextSpan(
          children: <TextSpan>[
            TextSpan(
                style: textStyle,
                text: "Flutter is Googe's UI toolkit for building beautiful, "
                    'natively compiled applications for mobile, web, and desktop'
                    'from a single codebase. Learn more about Flutter at '),
            TextSpan(
                style: textStyle.copyWith(color: theme.colorScheme.primary),
                text: 'https://flutter.dev'),
            TextSpan(style: textStyle, text: '.'),
          ],
        ),
      ),
    ];

    return Scaffold(
      backgroundColor: Color.fromRGBO(209, 235, 205, 1),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Color.fromRGBO(56, 129, 47, 1)),
        backgroundColor: Colors.white,
        title: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            text: "便民服務",
            style: TextStyle(
              fontSize: 20,
              color: Color.fromRGBO(56, 129, 47, 1),
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              MyFlutterApp.bell,
              color: Color.fromRGBO(56, 129, 47, 1),
            ),
            onPressed: () {
              // do something
            },
          )
        ],
      ),
      drawer: Drawer(
        child: Container(
          color: Color.fromARGB(255, 255, 255, 255), //<-- SEE HERE
          child: ListView(
            children: <Widget>[
              const SizedBox(
                height: 120, // To change the height of DrawerHeader
                width: double.infinity,
                child: DrawerHeader(
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(72, 156, 61, 1),
                  ),
                  child: Text(
                    '亞東紀念醫院',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              ListTile(
                title: const Text(
                  '首頁',
                  style: TextStyle(color: Color.fromRGBO(128, 136, 127, 1)),
                ),
                leading: const Icon(
                  Icons.home,
                  color: Color.fromRGBO(128, 136, 127, 1),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MyHomePage(
                              title: '',
                            )),
                  );
                },
              ),
              ListTile(
                title: const Text(
                  '個人化',
                  style: TextStyle(color: Color.fromRGBO(128, 136, 127, 1)),
                ),
                leading: const Icon(
                  Icons.person,
                  color: Color.fromRGBO(128, 136, 127, 1),
                ),
                onTap: () {},
              ),
              ListTile(
                title: const Text(
                  '亞東訊息',
                  style: TextStyle(color: Color.fromRGBO(128, 136, 127, 1)),
                ),
                leading: const Icon(
                  Icons.message,
                  color: Color.fromRGBO(128, 136, 127, 1),
                ),
                onTap: () {},
              ),
              ListTile(
                title: const Text(
                  '住院專區',
                  style: TextStyle(color: Color.fromRGBO(128, 136, 127, 1)),
                ),
                leading: const Icon(
                  Icons.local_hospital,
                  color: Color.fromRGBO(128, 136, 127, 1),
                ),
                onTap: () {},
              ),
              ListTile(
                title: const Text(
                  '便民服務',
                  style: TextStyle(color: Color.fromRGBO(128, 136, 127, 1)),
                ),
                leading: const Icon(
                  Icons.heat_pump_sharp,
                  color: Color.fromRGBO(128, 136, 127, 1),
                ),
                onTap: () {},
              ),
              ListTile(
                title: const Text(
                  '帳號設定',
                  style: TextStyle(color: Color.fromRGBO(128, 136, 127, 1)),
                ),
                leading: const Icon(
                  Icons.account_balance,
                  color: Color.fromRGBO(128, 136, 127, 1),
                ),
                onTap: () {},
              ),
              ListTile(
                title: const Text(
                  '程式設定',
                  style: TextStyle(color: Color.fromRGBO(128, 136, 127, 1)),
                ),
                leading: const Icon(
                  Icons.code,
                  color: Color.fromRGBO(128, 136, 127, 1),
                ),
                onTap: () {},
              ),
              ListTile(
                title: const Text(
                  '設定密碼',
                  style: TextStyle(color: Color.fromRGBO(128, 136, 127, 1)),
                ),
                leading: const Icon(
                  Icons.security,
                  color: Color.fromRGBO(128, 136, 127, 1),
                ),
                onTap: () {},
              ),
              ListTile(
                title: const Text(
                  '登出',
                  style: TextStyle(color: Color.fromRGBO(128, 136, 127, 1)),
                ),
                leading: const Icon(
                  Icons.logout,
                  color: Color.fromRGBO(128, 136, 127, 1),
                ),
                onTap: () {},
              ),
            ],
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
