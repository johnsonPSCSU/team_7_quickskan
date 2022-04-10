import 'package:flutter/material.dart';
import 'subinfo/list_items.dart';


class Info extends StatefulWidget {
  const Info({Key? key}) : super(key: key);

  @override
  _InfoState createState() => _InfoState();
}

class _InfoState extends State<Info> {
  final ScrollController _controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: ([Color.fromARGB(255, 170, 212, 255), Color.fromARGB(255, 212, 170, 255)])
          )
        ),
      child: Column(children: <Widget>[ infoItem()])
    );
  }

  Widget infoItem() {
    return Container( 
      height: MediaQuery.of(context).size.height-197,
      margin: const EdgeInsets.only(left: 15.0, right:15.0),
      child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: listItems.length,
          controller: _controller,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              margin: const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 20.0, top: 20.0),
              width: 300.0,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.9),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: const Offset(1, 1), // changes position of shadow
                    ),
                  ]
                  ),
            
              child: Column(children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 10.0, vertical: 15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        listItems[index].name,
                        style: const TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.w600,
                            color: Colors.black),
                        textAlign: TextAlign.center, 
                      ),
                    ],
                  ),
                ),
                Hero(
                  tag: listItems[index].name,
                  child:Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage('assets/${listItems[index].image}'),
                          fit: BoxFit.fill
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.blue.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 4,
                            offset: const Offset(1, 1), // changes position of shadow
                          ),
                        ]
                      ),
                    ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 15.0, vertical: 15.0),
                  child: Text(
                    listItems[index].description,
                    style: const TextStyle(color: Colors.black, fontSize: 16.0),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 15.0, vertical: 15.0),
                  child: Text(
                    listItems[index].longDescription,
                    style: const TextStyle(color: Colors.black, fontSize: 16.0),
                  ),
                ),
                const SizedBox(
                  height: 15.0,
                ),
              ]),
            );
          }),
    );
  }
}

