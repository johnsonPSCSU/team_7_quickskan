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
       decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: ([Color.fromARGB(255, 170, 212, 255), Color.fromARGB(255, 212, 170, 255)])
          )
        ),

        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 40),
        child: Container(
          alignment: Alignment.topCenter,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 255, 255, 255),
            borderRadius: BorderRadius.circular(30),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.9),
                spreadRadius: 5,
                blurRadius: 7,
                offset: const Offset(1, 1), // changes position of shadow
              ),
            ],
          ),
          child: Column(
             
            children: [ Image.asset('assets/Quickskan.png') , 
              const Text(  
                      'QuickSkan: A mobile\nSkin Disease Recognition application.\n',  
                      style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w700),
                      textAlign: TextAlign.center,  
                  ), 
                  const Text(  
                      'Created by:\n',  
                      style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600),
                      textAlign: TextAlign.center,  
                  ),
                   const Text(  
                      'Radovan Pokrajac\n&\nPaul Johnson \n',  
                      style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500),
                      textAlign: TextAlign.center,  
                  ),
                   const Text(  
                      'Click on the camera below to get started!',  
                      style: TextStyle(fontSize: 14.0),
                      textAlign: TextAlign.center,  
                  )    
              ])
        ),
      ),
    );
  }
}