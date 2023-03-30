import 'package:flutter/material.dart';

class ExampleDestination {
  const ExampleDestination(this.label, this.icon, this.selectedIcon);
  final String label;
  final Widget icon;
  final Widget selectedIcon;
}

const List<ExampleDestination> destinations = <ExampleDestination>[
  ExampleDestination('個人化', Icon(Icons.person_outlined), Icon(Icons.person)),
  ExampleDestination('亞東訊息', Icon(Icons.message_outlined), Icon(Icons.message)),
  ExampleDestination('首頁', Icon(Icons.home_outlined), Icon(Icons.home)),
  ExampleDestination(
      '住院專區', Icon(Icons.local_hospital_outlined), Icon(Icons.local_hospital)),
  ExampleDestination(
      '便民服務', Icon(Icons.handshake_outlined), Icon(Icons.handshake)),
];

void main() {
  runApp(
    MaterialApp(
      title: 'NavigationDrawer Example',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      home: const NavigationDrawerExample(),
    ),
  );
}

class NavigationDrawerExample extends StatefulWidget {
  const NavigationDrawerExample({super.key});

  @override
  State<NavigationDrawerExample> createState() =>
      _NavigationDrawerExampleState();
}

class _NavigationDrawerExampleState extends State<NavigationDrawerExample> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  int _selectedIndex = 0;
  int screenIndex = 0;
  late bool showNavigationDrawer;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void handleScreenChanged(int selectedScreen) {
    setState(() {
      screenIndex = selectedScreen;
    });
  }

  void openDrawer() {
    scaffoldKey.currentState!.openEndDrawer();
  }

  Widget buildBottomBarScaffold() {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text('Page Index =  $screenIndex'),
            //_widgetOptions.elementAt(_selectedIndex),
          ],
        ),
      ),
      bottomNavigationBar: NavigationBar(
        backgroundColor: Colors.white,
        selectedIndex: screenIndex,
        onDestinationSelected: (int index) {
          setState(() {
            screenIndex = index;
          });
        },
        destinations: destinations.map((ExampleDestination destination) {
          return NavigationDestination(
            label: destination.label,
            icon: destination.icon,
            selectedIcon: destination.selectedIcon,
            tooltip: destination.label,
          );
          const Icon(
            Icons.person_outlined,
            color: Colors.blue,
            size: 36.0,
          );
        }).toList(),
        
        // currentIndex: _selectedIndex,
        // unselectedItemColor: Color.fromRGBO(88, 103, 86, 1),
        // selectedItemColor: Color.fromRGBO(248, 177, 172, 1),
      ),
    );
  }

  Widget buildDrawerScaffold(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      body: SafeArea(
        bottom: false,
        top: false,
        child: Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: NavigationRail(
                minWidth: 50,
                destinations:
                    destinations.map((ExampleDestination destination) {
                  return NavigationRailDestination(
                    label: Text(destination.label),
                    icon: destination.icon,
                    selectedIcon: destination.selectedIcon,
                  );
                }).toList(),
                selectedIndex: screenIndex,
                useIndicator: true,
                onDestinationSelected: (int index) {
                  setState(() {
                    screenIndex = index;
                  });
                },
              ),
            ),
            const VerticalDivider(thickness: 1, width: 1),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text('Page Index =  $screenIndex'),
                  ElevatedButton(
                    onPressed: openDrawer,
                    child: const Text('Open Drawer'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      endDrawer: NavigationDrawer(
        onDestinationSelected: handleScreenChanged,
        selectedIndex: screenIndex,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(28, 16, 16, 10),
            child: Text(
              'Header',
              style: Theme.of(context).textTheme.titleSmall,
            ),
          ),
          ...destinations.map((ExampleDestination destination) {
            return NavigationDrawerDestination(
              label: Text(destination.label),
              icon: destination.icon,
              selectedIcon: destination.selectedIcon,
            );
          }),
          const Padding(
            padding: EdgeInsets.fromLTRB(28, 16, 28, 10),
            child: Divider(),
          ),
        ],
      ),
    );
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    showNavigationDrawer = MediaQuery.of(context).size.width >= 450;
  }

  @override
  Widget build(BuildContext context) {
    return showNavigationDrawer
        ? buildDrawerScaffold(context)
        : buildBottomBarScaffold();
  }
}
