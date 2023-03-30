import 'package:flutter/material.dart';
import 'package:flutter_application/page/homePage/home_index.dart';

class ReservePage extends StatefulWidget {
  const ReservePage({super.key, required this.title});

  final String title;

  @override
  State<StatefulWidget> createState() => _ReservePageState();
}

class _ReservePageState extends State<ReservePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("網路掛號 / 預約"),
        centerTitle: true,
        backgroundColor: Colors.blue[900],
      ),
      body: Center(
        child: ElevatedButton(
          child: Text("Tap on this"),
          style: ElevatedButton.styleFrom(
            primary: Colors.red,
            elevation: 0,
          ),
          onPressed: () {},
        ),
      ),
    );
  }
}
