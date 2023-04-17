// 個人化

import 'package:flutter/material.dart';
import 'package:flutter_application/my_flutter_app_icons.dart';
import 'package:flutter_application/page/homePage/bottomNav/home_index.dart';
import 'package:flutter_application/page/homePage/bottomNav/peopleService.dart';

class RecordCkeckPage extends StatefulWidget {
  const RecordCkeckPage({super.key, required this.title});

  final String title;

  @override
  State<RecordCkeckPage> createState() => _RecordCkeckPageState();
}

class _RecordCkeckPageState extends State<RecordCkeckPage> {
  int _selectedIndex = 0;
  int tappedIndex = 0;
  int crossAxisCellCount = 4;
  int mainAxisCellCount = 4;
  final TextEditingController _searchController = TextEditingController();

  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final TextStyle textStyle = theme.textTheme.bodyMedium!;
    final List<Widget> aboutBoxChildren = <Widget>[];

    return Scaffold(
      backgroundColor: Color.fromRGBO(243, 243, 243, 1),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Color.fromRGBO(255, 255, 255, 1)),
        backgroundColor: Color.fromRGBO(120, 182, 112, 1),
        title: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            text: "個人紀錄 / 查詢",
            style: TextStyle(
              fontSize: 20,
              color: Color.fromRGBO(255, 255, 255, 1),
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(330, 82),
                  padding: EdgeInsets.only(left: 0),
                  backgroundColor:
                      Color.fromRGBO(255, 255, 255, 1), // Background color
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      '個人資訊維護區與登出',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(88, 103, 86, 1)),
                    ), // <-- Text
                    SizedBox(
                      width: 51,
                    ),
                    Icon(
                        // <-- Icon
                        MyFlutterApp.arrow_alt_circle_right,
                        size: 24.0,
                        color: Color.fromRGBO(255, 234, 156, 1)),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(330, 82),
                  padding: EdgeInsets.only(left: 0),
                  backgroundColor:
                      Color.fromRGBO(255, 255, 255, 1), // Background color
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      '監護人及眷屬綁定',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(88, 103, 86, 1)),
                    ), // <-- Text
                    SizedBox(
                      width: 93,
                    ),
                    Icon(
                        // <-- Icon
                        MyFlutterApp.arrow_alt_circle_right,
                        size: 24.0,
                        color: Color.fromRGBO(255, 234, 156, 1)),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(330, 82),
                  padding: EdgeInsets.only(left: 0),
                  backgroundColor:
                      Color.fromRGBO(255, 255, 255, 1), // Background color
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      '我的最愛',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(88, 103, 86, 1)),
                    ), // <-- Text
                    SizedBox(
                      width: 173,
                    ),
                    Icon(
                        // <-- Icon
                        MyFlutterApp.arrow_alt_circle_right,
                        size: 24.0,
                        color: Color.fromRGBO(255, 234, 156, 1)),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(330, 82),
                  padding: EdgeInsets.only(left: 0),
                  backgroundColor:
                      Color.fromRGBO(255, 255, 255, 1), // Background color
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      '線上健康評估',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(88, 103, 86, 1)),
                    ), // <-- Text
                    SizedBox(
                      width: 133,
                    ),
                    Icon(
                        // <-- Icon
                        MyFlutterApp.arrow_alt_circle_right,
                        size: 24.0,
                        color: Color.fromRGBO(255, 234, 156, 1)),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(330, 82),
                  padding: EdgeInsets.only(left: 0),
                  backgroundColor:
                      Color.fromRGBO(255, 255, 255, 1), // Background color
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      '個人行事曆',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(88, 103, 86, 1)),
                    ), // <-- Text
                    SizedBox(
                      width: 153,
                    ),
                    Icon(
                        // <-- Icon
                        MyFlutterApp.arrow_alt_circle_right,
                        size: 24.0,
                        color: Color.fromRGBO(255, 234, 156, 1)),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(330, 82),
                  padding: EdgeInsets.only(left: 0),
                  backgroundColor:
                      Color.fromRGBO(255, 255, 255, 1), // Background color
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      '異常回報',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(88, 103, 86, 1)),
                    ), // <-- Text
                    SizedBox(
                      width: 173,
                    ),
                    Icon(
                        // <-- Icon
                        MyFlutterApp.arrow_alt_circle_right,
                        size: 24.0,
                        color: Color.fromRGBO(255, 234, 156, 1)),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(330, 82),
                  padding: EdgeInsets.only(left: 0),
                  backgroundColor:
                      Color.fromRGBO(255, 255, 255, 1), // Background color
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      '小額捐款',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(88, 103, 86, 1)),
                    ), // <-- Text
                    SizedBox(
                      width: 173,
                    ),
                    Icon(
                        // <-- Icon
                        MyFlutterApp.arrow_alt_circle_right,
                        size: 24.0,
                        color: Color.fromRGBO(255, 234, 156, 1)),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
              ),
            ],
          ),
        ),
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
