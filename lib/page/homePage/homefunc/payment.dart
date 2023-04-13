import 'package:flutter/material.dart';
import 'package:flutter_application/page/homePage/bottomNav/hospitalized.dart';
import 'package:flutter_application/page/homePage/bottomNav/message.dart';
import 'package:flutter_application/page/homePage/bottomNav/peopleService.dart';
import 'package:flutter_application/page/homePage/bottomNav/personal.dart';

import '../bottomNav/home_index.dart';
import '../list/accountSetting.dart';
import '../list/appSetting.dart';
import '../list/logout.dart';
import '../list/passwordSetting.dart';

void main() {
  runApp(const MaterialApp(
    title: 'Navigation Basics',
    home: PaymentPage(),
  ));
}

class PaymentPage extends StatelessWidget {
  const PaymentPage({super.key});

// void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }

  @override
  Widget build(BuildContext context) {
    int currentPageIndex = 0; // 切換頁面用
    int _selectedIndex = 0;
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Color.fromRGBO(94, 153, 86, 1)),
        backgroundColor: Color.fromRGBO(192, 239, 186, 1),
        title: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            text: "醫療繳費",
            style: TextStyle(
              fontSize: 20,
              color: Color.fromRGBO(94, 153, 86, 1),
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
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
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
              ),
              SizedBox(
                height: 10.0,
              ),
              Padding(
                padding: const EdgeInsets.all(3.0),
              ),
              SizedBox(
                width: 350.0,
                height: 84.0,
                child: ElevatedButton.icon(
                  icon: Icon(
                    Icons.payments,
                    size: 24.0,
                  ),
                  label: Text(
                    '醫指付',
                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                  ),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.only(left: 0),
                    backgroundColor:
                        Color.fromRGBO(83, 194, 141, 1), // Background color
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const DepartRoute()),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
              ),
              SizedBox(
                width: 350.0,
                height: 63.0,
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(
                        width: 2.0, color: Color.fromRGBO(145, 200, 137, 1)),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    '帳單查詢與繳費記錄',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(88, 103, 86, 1)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
              ),
              SizedBox(
                width: 350.0,
                height: 63.0,
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(
                        width: 2.0, color: Color.fromRGBO(145, 200, 137, 1)),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    '預計費用試算',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(88, 103, 86, 1)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
              ),
              SizedBox(
                width: 350.0,
                height: 63.0,
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(
                        width: 2.0, color: Color.fromRGBO(145, 200, 137, 1)),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    '欠費記錄提醒',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(88, 103, 86, 1)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
              ),
              SizedBox(
                width: 350.0,
                height: 63.0,
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(
                        width: 2.0, color: Color.fromRGBO(145, 200, 137, 1)),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    '超商或其他支付連結',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(88, 103, 86, 1)),
                  ),
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
        currentIndex: currentPageIndex,
        // onTap: (int index) {
        //   setState(() {
        //     currentPageIndex = index; //此處實現頁面跳轉，根據pageList的索引值跳轉到對應頁面
        //   });
        // },
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
      ),
    );
  }
}

// 科別掛號
class DepartRoute extends StatelessWidget {
  const DepartRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Color.fromRGBO(147, 200, 141, 1)),
        backgroundColor: Color.fromRGBO(255, 255, 255, 1),
        title: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            text: "科別掛號",
            style: TextStyle(
              fontSize: 20,
              color: Color.fromRGBO(94, 153, 86, 1),
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.only(left: 0),
            backgroundColor:
                Color.fromRGBO(83, 194, 141, 1), // Background color
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text(
            'Go back!',
            style: TextStyle(
              fontSize: 20,
              color: Color.fromRGBO(255, 255, 255, 1),
            ),
          ),
        ),
      ),
    );
  }
}

// 醫師掛號
class DoctorRoute extends StatelessWidget {
  const DoctorRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Color.fromRGBO(147, 200, 141, 1)),
        backgroundColor: Color.fromRGBO(255, 255, 255, 1),
        title: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            text: "醫師掛號",
            style: TextStyle(
              fontSize: 20,
              color: Color.fromRGBO(94, 153, 86, 1),
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.only(left: 0),
            backgroundColor:
                Color.fromRGBO(83, 194, 141, 1), // Background color
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text(
            'Go back!',
            style: TextStyle(
              fontSize: 20,
              color: Color.fromRGBO(255, 255, 255, 1),
            ),
          ),
        ),
      ),
    );
  }
}

// 取消掛號
class CancelRoute extends StatelessWidget {
  const CancelRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Color.fromRGBO(147, 200, 141, 1)),
        backgroundColor: Color.fromRGBO(255, 255, 255, 1),
        title: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            text: "取消掛號",
            style: TextStyle(
              fontSize: 20,
              color: Color.fromRGBO(94, 153, 86, 1),
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.only(left: 0),
            backgroundColor:
                Color.fromRGBO(83, 194, 141, 1), // Background color
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text(
            'Go back!',
            style: TextStyle(
              fontSize: 20,
              color: Color.fromRGBO(255, 255, 255, 1),
            ),
          ),
        ),
      ),
    );
  }
}
