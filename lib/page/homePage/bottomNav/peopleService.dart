// 便民服務

import 'package:flutter/material.dart';
import 'package:flutter_application/my_flutter_app_icons.dart';
import 'package:flutter_application/page/homePage/bottomNav/peopleServiceItem/apply.dart';
import 'package:flutter_application/page/homePage/bottomNav/peopleServiceItem/shoppingArea.dart';

class PeopleServicePage extends StatefulWidget {
  const PeopleServicePage({super.key, required this.title});

  final String title;

  @override
  State<PeopleServicePage> createState() => _PeopleServicePageState();
}

class _PeopleServicePageState extends State<PeopleServicePage> {
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

    return Scaffold(
      backgroundColor: Color.fromRGBO(209, 235, 205, 1),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Color.fromRGBO(255, 255, 255, 1)),
        backgroundColor: Color.fromRGBO(151, 214, 142, 1),
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
                      '各項申請',
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
                        builder: (context) => const ItemApplyPage(
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
                      '積點回饋',
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
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //       builder: (context) => const HealthDairyPage(
                  //             title: '',
                  //           )),
                  // );
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
                      '購物專區',
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
                        builder: (context) => const ShoppingPage(
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
                    RichText(
                      text: TextSpan(
                        text: '快速通關護照\n',
                        children: [
                          TextSpan(
                            text: '產生QR Code',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Color.fromRGBO(178, 220, 200, 1),
                            ),
                          ),
                        ],
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(88, 103, 86, 1),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 103,
                    ),
                    Icon(
                        // <-- Icon
                        MyFlutterApp.arrow_alt_circle_right,
                        size: 24.0,
                        color: Color.fromRGBO(96, 181, 125, 1)),
                  ],
                ),
                onPressed: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //       builder: (context) => const PatientPartiPage(
                  //             title: '',
                  //           )),
                  // );
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
                      '輔具租借預約',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(88, 103, 86, 1)),
                    ), // <-- Text
                    SizedBox(
                      width: 103,
                    ),
                    Icon(
                        // <-- Icon
                        MyFlutterApp.arrow_alt_circle_right,
                        size: 24.0,
                        color: Color.fromRGBO(96, 181, 125, 1)),
                  ],
                ),
                onPressed: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //       builder: (context) => const RemindPage(
                  //             title: '',
                  //           )),
                  // );
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
                      '留言區',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(88, 103, 86, 1)),
                    ), // <-- Text
                    SizedBox(
                      width: 167,
                    ),
                    Icon(
                        // <-- Icon
                        MyFlutterApp.arrow_alt_circle_right,
                        size: 24.0,
                        color: Color.fromRGBO(96, 181, 125, 1)),
                  ],
                ),
                onPressed: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //       builder: (context) => const RemindPage(
                  //             title: '',
                  //           )),
                  // );
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
