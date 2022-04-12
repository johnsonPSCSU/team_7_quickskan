import 'package:flutter/material.dart';
import 'subinfo/list_items.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class Info extends StatefulWidget {
  const Info({Key? key}) : super(key: key);

  @override
  _InfoState createState() => _InfoState();
}

class _InfoState extends State<Info> {
  final ItemScrollController _scrollController = ItemScrollController();
  void _scrollToIndex(int index) {
    _scrollController.scrollTo(
        index: index,
        duration: const Duration(seconds: 2),
        curve: Curves.ease);
  }

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
    var menuItem = <String>[];
    for(var element in listItems){
      menuItem.add(element.value);
    }
  
    return Container( 
      height: MediaQuery.of(context).size.height-197,
      margin: const EdgeInsets.only(left: 15.0, right:15.0),
      child: ScrollablePositionedList.builder(
          itemScrollController: _scrollController,
          itemCount: listItems.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              margin: const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 20.0, top: 40.0),
              width: 300.0,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
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
                            color: Colors.deepPurple),
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
                index==0 ? DropdownButton<String>(

                  value: listItems[index].value,
                  icon: const Icon(Icons.arrow_downward, color: Colors.deepPurple,),
                  elevation: 16,
                  style: const TextStyle(color: Colors.deepPurple),
                  underline: Container(
                    height: 2,
                    color: Colors.deepPurpleAccent,
                  ),
                  onChanged: (String? newValue) {
                    for(var i in listItems){
                      if(i.value == newValue){
                        _scrollToIndex(i.index);
                        return ;
                      }
                    }
                  },
                  items: (menuItem.map
                      <DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList())
              ): const SizedBox(
                  height: 0.0,
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
                
             index!=0 ? ElevatedButton.icon(
                  label: const Text("Scroll to top",  
                                    style:  TextStyle(color: Colors.deepPurple)) ,
                  icon: const Icon(Icons.arrow_upward, color: Colors.deepPurple,),
                  onPressed: (){
                        _scrollToIndex(0);
                        return ;},
                 style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.white),) ,

                ): 
                const SizedBox(
                  height: 0.0,
                ),
                const SizedBox(
                  height: 15.0,
                )
                              
            ])
            );

          })
        );
  }
}

