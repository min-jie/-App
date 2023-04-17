import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application/page/homePage/bottomNav/hospitalized.dart';
import 'package:flutter_application/page/homePage/bottomNav/message.dart';
import 'package:flutter_application/page/homePage/bottomNav/peopleService.dart';
import 'package:flutter_application/page/homePage/bottomNav/personal.dart';
import 'package:flutter_application/page/homePage/homefunc/reserve.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_application/my_flutter_app_icons.dart';
import 'package:url_launcher/url_launcher.dart';

import '../bottomNav/home_index.dart';
import '../list/accountSetting.dart';
import '../list/appSetting.dart';
import '../list/logout.dart';
import '../list/passwordSetting.dart';

void main() {
  runApp(const MaterialApp(
    title: 'Navigation Basics',
    home: ProgressCheckPage(),
  ));
}

// 看診進度連結跳轉
final Uri _url_clinic =
    Uri.parse('https://www.femh.org.tw/visit/visit?Action=9');

Future<void> _launchUrl_clinic() async {
  if (!await launchUrl(_url_clinic)) {
    throw Exception('Could not launch $_url_clinic');
  }
}

// 抽血進度連結跳轉
final Uri _url_blood =
    Uri.parse('https://www.femh.org.tw/visit/visit?Action=9&tab=tab2');

Future<void> _launchUrl_blood() async {
  if (!await launchUrl(_url_blood)) {
    throw Exception('Could not launch $_url_blood');
  }
}

// 領藥進度連結跳轉
final Uri _url_medicine =
    Uri.parse('https://www.femh.org.tw/visit/visit?Action=9&tab=tab3');

Future<void> _launchUrl_medicine() async {
  if (!await launchUrl(_url_medicine)) {
    throw Exception('Could not launch $_url_blood');
  }
}

// 身心障礙申請進度查詢
final Uri _url_pmhandicapped =
    Uri.parse('https://volunteer.femh.org.tw/websocialsearch/People/PsySearch');

Future<void> _launchUrl_pmhandicapped() async {
  if (!await launchUrl(_url_pmhandicapped)) {
    throw Exception('Could not launch $_url_pmhandicapped');
  }
}

// 身心障礙申請進度查詢
final Uri _url_migrantworker =
    Uri.parse('https://volunteer.femh.org.tw/websocialsearch/People/PsySearch');

Future<void> _launchUrl_migrantworker() async {
  if (!await launchUrl(_url_migrantworker)) {
    throw Exception('Could not launch $_url_migrantworker');
  }
}

// TabBarView
class MyTabbedPage extends StatefulWidget {
  const MyTabbedPage({super.key});
  @override
  State<MyTabbedPage> createState() => _MyTabbedPageState();
}

class _MyTabbedPageState extends State<MyTabbedPage>
    with SingleTickerProviderStateMixin {
  static const List<Tab> myTabs = <Tab>[
    Tab(text: 'LEFT'),
    Tab(text: 'RIGHT'),
  ];

  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: myTabs.length);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: TabBar(
          controller: _tabController,
          tabs: myTabs,
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: myTabs.map((Tab tab) {
          final String label = tab.text!.toLowerCase();
          return Center(
            child: Text(
              'This is the $label tab',
              style: const TextStyle(fontSize: 36),
            ),
          );
        }).toList(),
      ),
    );
  }
}

class ProgressCheckPage extends StatelessWidget {
  const ProgressCheckPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Color.fromRGBO(94, 153, 86, 1)),
        backgroundColor: Color.fromRGBO(192, 239, 186, 1),
        title: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            text: "進度 / 報告 查詢",
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
                width: 350.0,
                height: 36.0,
                child: Text(
                  '進度查詢',
                  style: TextStyle(
                    color: Color.fromRGBO(120, 120, 120, 1),
                    fontSize: 20,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(3.0),
              ),
              SizedBox(
                width: 350.0,
                height: 84.0,
                child: ElevatedButton.icon(
                  icon: Icon(
                    MyFlutterApp.laptop_medical,
                    size: 24.0,
                  ),
                  label: Text(
                    '看診進度',
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
                  onPressed: _launchUrl_clinic,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
              ),
              SizedBox(
                width: 350.0,
                child: Row(children: <Widget>[
                  Expanded(
                    child: SizedBox(
                      width: 20.0,
                      height: 140.0,
                      child: ElevatedButton.icon(
                        icon: Icon(
                          Icons.nature_people,
                          size: 24.0,
                        ),
                        label: Text(
                          textAlign: TextAlign.left,
                          '待領藥 \n人數查詢',
                          style: TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.only(left: 0),
                          backgroundColor: Color.fromRGBO(
                              246, 178, 76, 1), // Background color
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                        ),
                        onPressed: _launchUrl_medicine,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                  ),
                  Expanded(
                    child: SizedBox(
                      width: 20.0,
                      height: 140.0,
                      child: ElevatedButton.icon(
                        icon: Icon(
                          Icons.bloodtype,
                          size: 24.0,
                        ),
                        label: Text(
                          '抽血 \n進度查詢',
                          style: TextStyle(
                              fontSize: 26, fontWeight: FontWeight.bold),
                        ),
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.only(left: 0),
                          backgroundColor: Color.fromRGBO(
                              217, 98, 81, 1), // Background color
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                        ),
                        onPressed: _launchUrl_blood,
                      ),
                    ),
                  ),
                ]),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
              ),
              SizedBox(
                width: 350.0,
                height: 63.0,
                child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        Color.fromRGBO(116, 166, 224, 1), // Background color
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                  onPressed: _launchUrl_blood,
                  icon: Icon(
                    Icons.bed,
                    size: 24.0,
                  ),
                  label: Text(
                    '急診待床人數查詢',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
              ),
              SizedBox(
                width: 350.0,
                height: 36.0,
                child: Text(
                  '其他查詢',
                  style: TextStyle(
                    color: Color.fromRGBO(120, 120, 120, 1),
                    fontSize: 20,
                  ),
                ),
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
                  onPressed: _launchUrl_pmhandicapped,
                  child: Text(
                    '身心障礙申請進度查詢',
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
                  onPressed: _launchUrl_migrantworker,
                  child: Text(
                    '看護移工案件進度查詢',
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
                    '檢查進度',
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
                    '手術進度查詢',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(88, 103, 86, 1)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
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
                    '檢查報告進度',
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
                    '疫苗註記',
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
              Padding(
                padding: const EdgeInsets.all(50.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
