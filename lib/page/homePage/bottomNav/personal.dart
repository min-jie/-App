// 個人化

import 'package:flutter/material.dart';
import 'package:flutter_application/my_flutter_app_icons.dart';
import 'package:flutter_application/page/homePage/bottomNav/home_index.dart';
import 'package:flutter_application/page/homePage/bottomNav/peopleService.dart';
import 'package:flutter_application/page/homePage/bottomNav/personalItem/health_dairy.dart';
import 'package:flutter_application/page/homePage/bottomNav/personalItem/patient_parti.dart';
import 'package:flutter_application/page/homePage/bottomNav/personalItem/record_check.dart';
import 'package:flutter_application/page/homePage/bottomNav/personalItem/remind.dart';

import '../homefunc/medicineManage.dart';
import '../list/accountSetting.dart';
import '../list/appSetting.dart';
import '../list/logout.dart';
import '../list/passwordSetting.dart';
import 'hospitalized.dart';
import 'message.dart';

class PersonalPage extends StatefulWidget {
  const PersonalPage({super.key, required this.title});

  final String title;

  @override
  State<PersonalPage> createState() => _PersonalPageState();
}

class _PersonalPageState extends State<PersonalPage> {
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
      backgroundColor: Color.fromRGBO(219, 242, 216, 1),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Color.fromRGBO(255, 255, 255, 1)),
        backgroundColor: Color.fromRGBO(151, 214, 142, 1),
        title: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            text: "個人化",
            style: TextStyle(
              fontSize: 20,
              color: Color.fromRGBO(56, 129, 47, 1),
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
                      '個人紀錄 / 查詢',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(88, 103, 86, 1)),
                    ), // <-- Text
                    SizedBox(
                      width: 80,
                    ),
                    Icon(
                        // <-- Icon
                        MyFlutterApp.arrow_alt_circle_right,
                        size: 24.0,
                        color: Color.fromRGBO(96, 181, 125, 1)),
                  ],
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RecordCkeckPage(
                              title: '',
                            )),
                  );
                },
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
              ),
              ElevatedButton(
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
                      '健康日誌',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(88, 103, 86, 1)),
                    ), // <-- Text
                    SizedBox(
                      width: 137,
                    ),
                    Icon(
                        // <-- Icon
                        MyFlutterApp.arrow_alt_circle_right,
                        size: 24.0,
                        color: Color.fromRGBO(96, 181, 125, 1)),
                  ],
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const HealthDairyPage(
                              title: '',
                            )),
                  );
                },
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
              ),
              ElevatedButton(
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
                      '各項提醒',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(88, 103, 86, 1)),
                    ), // <-- Text
                    SizedBox(
                      width: 137,
                    ),
                    Icon(
                        // <-- Icon
                        MyFlutterApp.arrow_alt_circle_right,
                        size: 24.0,
                        color: Color.fromRGBO(96, 181, 125, 1)),
                  ],
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RemindPage(
                              title: '',
                            )),
                  );
                },
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
              ),
              ElevatedButton(
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
                      '病患參與',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(88, 103, 86, 1)),
                    ), // <-- Text
                    SizedBox(
                      width: 137,
                    ),
                    Icon(
                        // <-- Icon
                        MyFlutterApp.arrow_alt_circle_right,
                        size: 24.0,
                        color: Color.fromRGBO(96, 181, 125, 1)),
                  ],
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const PatientPartiPage(
                              title: '',
                            )),
                  );
                },
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
              ),
              ElevatedButton(
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
                      '個管系統',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(88, 103, 86, 1)),
                    ), // <-- Text
                    SizedBox(
                      width: 137,
                    ),
                    Icon(
                        // <-- Icon
                        MyFlutterApp.arrow_alt_circle_right,
                        size: 24.0,
                        color: Color.fromRGBO(96, 181, 125, 1)),
                  ],
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RemindPage(
                              title: '',
                            )),
                  );
                },
              ),
              Padding(
                padding: const EdgeInsets.all(50.0),
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
