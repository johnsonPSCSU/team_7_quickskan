import 'package:flutter/material.dart';


class Info extends StatefulWidget {
  const Info({Key? key}) : super(key: key);
  @override
  _InfoState createState() => _InfoState();
}

class _InfoState extends State<Info> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color.fromARGB(255, 229, 243, 253),
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 40),
        child: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(30),
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 255, 255, 255),
            borderRadius: BorderRadius.circular(30),
            boxShadow: [
              BoxShadow(
                color: Colors.blue.withOpacity(0.3),
                spreadRadius: 2,
                blurRadius: 7,
                offset: Offset(0, 0), // changes position of shadow
              ),
            ],
          ),
          child: Column(
             
            children: [ Image.asset('assets/QuickSkan.png') , 
              const Text(  
                      'QuickSkan is an easy to use mobile app for\n Skin Disease Recognition. \n',  
                      style: TextStyle(fontSize: 20.0),
                      textAlign: TextAlign.center,  
                  ),
                   const Text(  
                      'Click on the camera below to get started!\n',  
                      style: TextStyle(fontSize: 16.0),
                      textAlign: TextAlign.center,  
                  )    
              ]
            ),

        ),
      ),
    );
  }
}