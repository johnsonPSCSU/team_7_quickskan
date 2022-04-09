import 'package:flutter/material.dart';


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromARGB(255, 220, 238, 252).withOpacity(0.9),
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 40),
        child: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(30),
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 255, 255, 255),
            borderRadius: BorderRadius.circular(30),
          ),
          child: Column(
             
            children: [ Image.asset('assets/QuickSkan.png') , 
              const Text(  
                      'QuickSkan is an easy to use Skin Disease recognition mobile app.\n',  
                      style: TextStyle(fontSize: 20.0),
                      textAlign: TextAlign.center,  
                  )  
              ])
        ),
      ),
    );
  }
}