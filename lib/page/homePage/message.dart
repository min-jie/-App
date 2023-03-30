import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyWidget(),
    );
  }
}

class MyWidget extends StatefulWidget {
  @override
  MyWidgetState createState() => MyWidgetState();
}

class MyWidgetState extends State<MyWidget> {
  late int tappedIndex;

  @override
  void initState() {
    super.initState();
    tappedIndex = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
          ListView.builder(
              shrinkWrap: true,
              itemCount: 4,
              itemBuilder: (context, index) {
                return Container(
                    color: tappedIndex == index ? Colors.blue : Colors.grey,
                    child: ListTile(
                        title: Center(
                          child: Text('${index + 1}'),
                        ),
                        onTap: () {
                          setState(() {
                            tappedIndex = index;
                          });
                        }));
              })
        ]));
  }
}
