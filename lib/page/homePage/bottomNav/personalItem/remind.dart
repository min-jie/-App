// 個人化

import 'package:flutter/material.dart';
import 'package:flutter_application/my_flutter_app_icons.dart';
import 'package:flutter_application/page/homePage/bottomNav/home_index.dart';
import 'package:flutter_application/page/homePage/bottomNav/peopleService.dart';

class RemindPage extends StatefulWidget {
  const RemindPage({super.key, required this.title});

  final String title;

  @override
  State<RemindPage> createState() => _RemindPageState();
}

class _RemindPageState extends State<RemindPage> {
  int _selectedIndex = 0;
  int tappedIndex = 0;
  int crossAxisCellCount = 4;
  int mainAxisCellCount = 4;

  final TextEditingController _searchController = TextEditingController();

  bool isAppleChecked = false;
  bool isBananaChecked = false;
  bool isCherryChecked = false;
  bool Clinic_Reminded = false; // 門診提醒
  bool StopClinic_Reminded = false; // 停診提醒
  bool Check_Reminded = false; // 檢查提醒
  bool TakeMec_Reminded = false; // 慢箋領藥提醒
  bool Surgery_Reminded = false; // 手術提醒
  bool Arrange_Reminded = false; // 排檢提醒
  bool DrawBlood_Reminded = false; // 抽血提醒
  bool MedInform_Reminded = false; // 衛教提醒
  bool MedUse_Reminded = false; // 用藥提醒

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
            text: "各項提醒",
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
                padding: const EdgeInsets.all(15.0),
              ),
              CheckboxListTile(
                title: const Text(
                  '門診提醒',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(88, 103, 86, 1)),
                ),
                activeColor: Color.fromRGBO(240, 190, 115, 1),
                checkColor: Color.fromRGBO(255, 255, 255, 1), // 打勾的色
                tileColor: Color.fromARGB(255, 255, 255, 255),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                value: Clinic_Reminded,
                onChanged: (bool? value) {
                  setState(() {
                    Clinic_Reminded = value!;
                  });
                },
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
              ),
              CheckboxListTile(
                title: const Text(
                  '停診提醒',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(88, 103, 86, 1)),
                ),
                activeColor: Color.fromRGBO(240, 190, 115, 1),
                checkColor: Color.fromRGBO(255, 255, 255, 1), // 打勾的色
                tileColor: Color.fromARGB(255, 255, 255, 255),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                value: StopClinic_Reminded,
                onChanged: (bool? value) {
                  setState(() {
                    StopClinic_Reminded = value!;
                  });
                },
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
              ),
              CheckboxListTile(
                title: const Text(
                  '檢查提醒',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(88, 103, 86, 1)),
                ),
                activeColor: Color.fromRGBO(240, 190, 115, 1),
                checkColor: Color.fromRGBO(255, 255, 255, 1), // 打勾的色
                tileColor: Color.fromARGB(255, 255, 255, 255),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                value: Check_Reminded,
                onChanged: (bool? value) {
                  setState(() {
                    Check_Reminded = value!;
                  });
                },
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
              ),
              CheckboxListTile(
                title: const Text(
                  '慢箋領藥提醒',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(88, 103, 86, 1)),
                ),
                activeColor: Color.fromRGBO(240, 190, 115, 1),
                checkColor: Color.fromRGBO(255, 255, 255, 1), // 打勾的色
                tileColor: Color.fromARGB(255, 255, 255, 255),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                value: TakeMec_Reminded,
                onChanged: (bool? value) {
                  setState(() {
                    TakeMec_Reminded = value!;
                  });
                },
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
              ),
              CheckboxListTile(
                title: const Text(
                  '手術提醒',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(88, 103, 86, 1)),
                ),
                activeColor: Color.fromRGBO(240, 190, 115, 1),
                checkColor: Color.fromRGBO(255, 255, 255, 1), // 打勾的色
                tileColor: Color.fromARGB(255, 255, 255, 255),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                value: Surgery_Reminded,
                onChanged: (bool? value) {
                  setState(() {
                    Surgery_Reminded = value!;
                  });
                },
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
              ),
              CheckboxListTile(
                title: const Text(
                  '排檢提醒',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(88, 103, 86, 1)),
                ),
                activeColor: Color.fromRGBO(240, 190, 115, 1),
                checkColor: Color.fromRGBO(255, 255, 255, 1), // 打勾的色
                tileColor: Color.fromARGB(255, 255, 255, 255),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                value: Arrange_Reminded,
                onChanged: (bool? value) {
                  setState(() {
                    Arrange_Reminded = value!;
                  });
                },
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
              ),
              CheckboxListTile(
                title: const Text(
                  '抽血提醒',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(88, 103, 86, 1)),
                ),
                activeColor: Color.fromRGBO(240, 190, 115, 1),
                checkColor: Color.fromRGBO(255, 255, 255, 1), // 打勾的色
                tileColor: Color.fromARGB(255, 255, 255, 255),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                value: DrawBlood_Reminded,
                onChanged: (bool? value) {
                  setState(() {
                    DrawBlood_Reminded = value!;
                  });
                },
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
              ),
              CheckboxListTile(
                title: const Text(
                  '衛教提醒',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(88, 103, 86, 1)),
                ),
                activeColor: Color.fromRGBO(240, 190, 115, 1),
                checkColor: Color.fromRGBO(255, 255, 255, 1), // 打勾的色
                tileColor: Color.fromARGB(255, 255, 255, 255),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                value: MedInform_Reminded,
                onChanged: (bool? value) {
                  setState(() {
                    MedInform_Reminded = value!;
                  });
                },
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
              ),
              CheckboxListTile(
                title: const Text(
                  '用藥提醒',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(88, 103, 86, 1)),
                ),
                activeColor: Color.fromRGBO(240, 190, 115, 1),
                checkColor: Color.fromRGBO(255, 255, 255, 1), // 打勾的色
                tileColor: Color.fromARGB(255, 255, 255, 255),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                value: MedUse_Reminded,
                onChanged: (bool? value) {
                  setState(() {
                    MedUse_Reminded = value!;
                  });
                },
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
