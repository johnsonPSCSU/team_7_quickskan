import 'package:flutter/material.dart';
import 'camera.dart';
import 'home.dart';
import 'info.dart';
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
      primaryColor: Color.fromARGB(255, 143, 178, 214),
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
  var pageController = PageController();
  final pages = [
    const Home(),
    const Camera(),
    const Info()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: const Color.fromARGB(255, 229, 243, 253),
    appBar: AppBar(
      leading: Image.asset('assets/Quickskan.png') ,
      title: Text(
      "QuickSkan",
      style: TextStyle(
        color: Theme.of(context).primaryColor,
        fontSize: 25,
        fontWeight: FontWeight.w700,
      ),
      ),
      centerTitle: true,
      backgroundColor: Colors.white,
    ),
    body: 
      PageView(allowImplicitScrolling: true, 
        children: pages,
        onPageChanged: (index){
          setState((){
            pageIndex = index;

          });
        },
        controller: pageController),
    bottomNavigationBar: buildMyNavBar(context),
    );
  }

  Container buildMyNavBar(BuildContext context) {
    return Container(
    height: 60,
    decoration: BoxDecoration(
      color: Theme.of(context).primaryColor,

    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
      IconButton(
        enableFeedback: false,
        onPressed: () {
        setState(() {
          pageIndex = 0;
          pageController.animateToPage(pageIndex, duration: const Duration(milliseconds: 400), curve: Curves.ease);
        });
        },
        icon: pageIndex == 0
          ? const Icon(
            Icons.home_filled,
            color: Color.fromARGB(255, 255, 255, 255),
            size: 35,
          )
          : const Icon(
            Icons.home_outlined,
            color: Color.fromARGB(255, 219, 219, 219),
            size: 35,
          ),
      ),
      IconButton(
        enableFeedback: false,
        onPressed: () {
        setState(() {
          pageIndex = 1;
           pageController.animateToPage(pageIndex, duration: const Duration(milliseconds: 400), curve: Curves.ease);
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
            color: Color.fromARGB(255, 219, 219, 219),
            size: 35,
          ),
      ),
      IconButton(
        enableFeedback: false,
        onPressed: () {
        setState(() {
          pageIndex = 2;
           pageController.animateToPage(pageIndex, duration: const Duration(milliseconds: 400), curve: Curves.ease);
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
            color: Color.fromARGB(255, 219, 219, 219),
            size: 35,
          ),
      ),
      ],
    ),
    );
  }
}


