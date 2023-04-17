// 個人化

import 'package:flutter/material.dart';
import 'package:flutter_application/my_flutter_app_icons.dart';
import 'package:flutter_application/page/homePage/bottomNav/home_index.dart';
import 'package:flutter_application/page/homePage/bottomNav/peopleService.dart';

class PatientPartiPage extends StatefulWidget {
  const PatientPartiPage({super.key, required this.title});

  final String title;

  @override
  State<PatientPartiPage> createState() => _PatientPartiPageState();
}

class _PatientPartiPageState extends State<PatientPartiPage> {
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
            text: "病患參與",
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
                      '同意書紀錄與提醒',
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
                      '診前筆記',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(88, 103, 86, 1)),
                    ), // <-- Text
                    SizedBox(
                      width: 177,
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
                      '醫病共享決策',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(88, 103, 86, 1)),
                    ), // <-- Text
                    SizedBox(
                      width: 140,
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
                      '安寧緩和 / \n臨終意願註記',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(88, 103, 86, 1)),
                    ), // <-- Text
                    SizedBox(
                      width: 143,
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
                      '滿意度問卷',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(88, 103, 86, 1)),
                    ), // <-- Text
                    SizedBox(
                      width: 163,
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
                padding: const EdgeInsets.all(55.0),
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
