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
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 40),
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: (const [Color.fromARGB(255, 170, 212, 255), Color.fromARGB(255, 212, 170, 255)])
          )
        ),
        child: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(30),
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 255, 255, 255),
            borderRadius: BorderRadius.circular(30),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.9),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(1, 1), // changes position of shadow
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