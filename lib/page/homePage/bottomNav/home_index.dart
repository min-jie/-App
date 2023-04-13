import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application/my_flutter_app_icons.dart';
import 'package:flutter_application/page/homePage/bottomNav/hospitalized.dart';
import 'package:flutter_application/page/homePage/bottomNav/message.dart';
import 'package:flutter_application/page/homePage/bottomNav/peopleService.dart';
import 'package:flutter_application/page/homePage/bottomNav/personal.dart';
import 'package:flutter_application/page/homePage/list/accountSetting.dart';
import 'package:flutter_application/page/homePage/list/appSetting.dart';
import 'package:flutter_application/page/homePage/list/logout.dart';
import 'package:flutter_application/page/homePage/list/passwordSetting.dart';
import 'package:flutter_application/page/homePage/homefunc/reserve.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

// title, appBar, bottomNavbar
class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  int tappedIndex = 0;
  int crossAxisCellCount = 4;
  int mainAxisCellCount = 4;

  int currentPageIndex = 0; // 切換頁面用

  final TextEditingController _searchController = TextEditingController();
  List<Widget> pages = [
    PersonalPage(
      title: '個人化',
    ),
    MessagePage(
      title: '亞東訊息',
    ),
    MyHomePage(
      title: '首頁',
    ),
    HospitalizedPage(
      title: '住院專區',
    ),
    PeopleServicePage(
      title: '便民服務',
    ),
  ];

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
    final List<Widget> aboutBoxChildren = <Widget>[
      const SizedBox(height: 24),
    ];

    return Scaffold(
      backgroundColor: Color.fromRGBO(209, 235, 205, 1),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Color.fromRGBO(56, 129, 47, 1)),
        backgroundColor: Colors.white,
        title: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
              text: "亞東紀念醫院",
              style: TextStyle(
                fontSize: 20,
                color: Color.fromRGBO(56, 129, 47, 1),
                fontWeight: FontWeight.w700,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: '\nFAR EASTERN MEMORIAL HOSPITAL',
                  style: TextStyle(
                    fontSize: 12,
                    color: Color.fromRGBO(56, 129, 47, 1),
                  ),
                ),
              ]),
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
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const PersonalPage(
                              title: '',
                            )),
                  );
                },
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
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MessagePage(
                              title: '',
                            )),
                  );
                },
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
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const HospitalizedPage(
                              title: '',
                            )),
                  );
                },
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
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const PeopleServicePage(
                              title: '',
                            )),
                  );
                },
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
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AccountSettingPage(
                              title: '',
                            )),
                  );
                },
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
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AppSettingPage(
                              title: '',
                            )),
                  );
                },
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
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const PasswordSettingPage(
                              title: '',
                            )),
                  );
                },
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
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const LogoutPage(
                              title: '',
                            )),
                  );
                },
              ),
            ],
          ),
        ),
      ),
      body: HomeContent(currentPageIndex),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentPageIndex,
        onTap: (int index) {
          setState(() {
            currentPageIndex = index; //此處實現頁面跳轉，根據pageList的索引值跳轉到對應頁面
          });
        },
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
        selectedFontSize: 18,
        unselectedItemColor: Color.fromRGBO(88, 103, 86, 1),
        selectedItemColor: Color.fromRGBO(248, 177, 172, 1),
//onTap: _onItemTapped,
      ),
    );
  }
}

// 內文
class HomeContent extends StatelessWidget {
  final title;

  const HomeContent(this.title, {super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      primary: false,
      padding: const EdgeInsets.all(20),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      crossAxisCount: 2,
      children: <Widget>[
        // 網路掛號 / 預約
        ElevatedButton.icon(
          icon: Icon(
            Icons.app_registration,
            color: Color.fromRGBO(94, 153, 86, 1),
            size: 35.0,
          ),
          label: Text(
            '網路掛號\n/ 預約',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Color.fromRGBO(94, 153, 86, 1),
            ),
          ),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            padding: EdgeInsets.only(left: 0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ReservePage()),
            );
          },
        ),

        // 預約慢籤 / 藥品管理
        ElevatedButton.icon(
          icon: Icon(
            Icons.medication,
            color: Color.fromRGBO(94, 153, 86, 1),
            size: 35.0,
          ),
          label: Text(
            '預約慢籤\n/ 藥品管理',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Color.fromRGBO(94, 153, 86, 1),
            ),
          ),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            padding: EdgeInsets.only(left: 0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ReservePage()),
            );
          },
        ),

        // 衛教資訊
        ElevatedButton.icon(
          icon: Icon(
            Icons.medical_information,
            color: Color.fromRGBO(94, 153, 86, 1),
            size: 35.0,
          ),
          label: Text(
            '衛教資訊',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Color.fromRGBO(94, 153, 86, 1),
            ),
          ),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            padding: EdgeInsets.only(left: 0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ReservePage()),
            );
          },
        ),

        // 醫療繳費
        ElevatedButton.icon(
          icon: Icon(
            Icons.payments,
            color: Color.fromRGBO(94, 153, 86, 1),
            size: 35.0,
          ),
          label: Text(
            '醫療繳費',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Color.fromRGBO(94, 153, 86, 1),
            ),
          ),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            padding: EdgeInsets.only(left: 0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ReservePage()),
            );
          },
        ),

        // 進度 /報告查詢
        ElevatedButton.icon(
          icon: Icon(
            Icons.checklist,
            color: Color.fromRGBO(94, 153, 86, 1),
            size: 35.0,
          ),
          label: Text(
            '進度\n/報告查詢',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Color.fromRGBO(94, 153, 86, 1),
            ),
          ),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            padding: EdgeInsets.only(left: 0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ReservePage()),
            );
          },
        ),

        // 遠距醫療
        ElevatedButton.icon(
          icon: Icon(
            Icons.medical_services,
            color: Color.fromRGBO(94, 153, 86, 1),
            size: 35.0,
          ),
          label: Text(
            '遠距醫療',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Color.fromRGBO(94, 153, 86, 1),
            ),
          ),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            padding: EdgeInsets.only(left: 0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ReservePage()),
            );
          },
        ),
      ],
    );
  }
}
