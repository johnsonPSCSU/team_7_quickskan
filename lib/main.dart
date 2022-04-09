import 'package:flutter/material.dart';
import 'camera.dart';
import 'home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    title: 'Team 7 Quickskan',
    theme: ThemeData(
      primaryColor: const Color.fromARGB(255,170, 212, 255),
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      hoverColor: Colors.transparent,
    ),
    debugShowCheckedModeBanner: false,
    home: const HomePage(),
    );
  }
}




class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int pageIndex = 0;

  final pages = [
    const Home(),
    const Camera(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: const Color(0xffC4DFCB),
    appBar: AppBar(
      title: Text(
      "QuickSkan",
      style: TextStyle(
        color: Theme.of(context).primaryColor,
        fontSize: 25,
        fontWeight: FontWeight.w600,
      ),
      ),
      centerTitle: true,
      backgroundColor: Colors.white,
    ),
    body: pages[pageIndex],
    bottomNavigationBar: buildMyNavBar(context),
    );
  }

  Container buildMyNavBar(BuildContext context) {
    return Container(
    height: 60,
    decoration: BoxDecoration(
      color: Theme.of(context).primaryColor,
      borderRadius: const BorderRadius.only(
      topLeft: Radius.circular(20),
      topRight: Radius.circular(20),
      ),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
      IconButton(
        enableFeedback: false,
        onPressed: () {
        setState(() {
          pageIndex = 0;
        });
        },
        icon: pageIndex == 0
          ? const Icon(
            Icons.home_filled,
            color: Colors.white,
            size: 35,
          )
          : const Icon(
            Icons.home_outlined,
            color: Colors.white,
            size: 35,
          ),
      ),
      IconButton(
        enableFeedback: false,
        onPressed: () {
        setState(() {
          pageIndex = 1;
        });
        },
        icon: pageIndex == 1
          ? const Icon(
            Icons.camera_alt_rounded,
            color: Colors.white,
            size: 35,
          )
          : const Icon(
            Icons.camera_alt_outlined,
            color: Colors.white,
            size: 35,
          ),
      ),
      IconButton(
        enableFeedback: false,
        onPressed: () {
        setState(() {
          pageIndex = 2;
        });
        },
        icon: pageIndex == 2
          ? const Icon(
            Icons.contact_support_rounded,
            color: Colors.white,
            size: 35,
          )
          : const Icon(
            Icons.contact_support_outlined,
            color: Colors.white,
            size: 35,
          ),
      ),
      ],
    ),
    );
  }
}


