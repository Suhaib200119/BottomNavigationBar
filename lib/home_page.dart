import 'package:bottom_navigation_bar/page_1.dart';
import 'package:bottom_navigation_bar/page_2.dart';
import 'package:bottom_navigation_bar/page_3.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> listPages=[
    new Page_1(),
    new Page_2(),
    new Page_3(),
  ];
  int currentIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom Navigation Bar"),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.title),label: "page_1"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.date_range),label: "page_2"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.timelapse),label: "page_3"
          ),
        ],
        currentIndex: currentIndex,
        onTap: (int index){
          setState(() {
            currentIndex=index;
          });
        },
      ),
      body: listPages[currentIndex],
    );
  }
}
