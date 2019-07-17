import 'package:flutter/material.dart';

class Home extends StatelessWidget{

void _onInfo(){
  print('This is an application by AI4Networks.');
}
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.red.shade900,
        title: new Text('Dr. Cough'),
        
        actions: <Widget>[ //used for creating tappable ICONS called actions
          new IconButton(icon: new Icon(Icons.settings), onPressed: ()=> debugPrint("Icon Tapped")),
          new IconButton(icon: new Icon(Icons.info_outline), onPressed: _onInfo),
          new IconButton(icon: new Icon(Icons.dehaze), onPressed: ()=>debugPrint('dehaze tapped') )

        ],
      ),

      //other properties
      backgroundColor: Colors.redAccent.shade50,
      body: new Container(
        alignment: Alignment.center,
       child: new Column(
         mainAxisAlignment: MainAxisAlignment.center,

         children: <Widget>[
           new Text('Charles',
           style: new TextStyle(fontSize: 20, fontWeight: FontWeight.w400,
           color: Colors.lime),),
           new InkWell(
             child: new Text('Visit our website'),
             onTap: ()=>debugPrint('Clicked the website link'), //used for text and make them tappable.. onTap is for single tap
             //there are also other Taps
           )
         ],
       ),
      ),

      floatingActionButton: new FloatingActionButton(onPressed: null, backgroundColor: Colors.yellow,tooltip: 'Going Up!',
      child: new Icon(Icons.local_hospital)),
      bottomNavigationBar: new BottomNavigationBar(items: [

        new BottomNavigationBarItem(icon: new Icon(Icons.account_box),title: new Text('Login/Sign Up'),backgroundColor: Colors.red ),
        new BottomNavigationBarItem(icon: new Icon(Icons.phone), title: new Text('Call Doctor')),
        new BottomNavigationBarItem(icon: new Icon(Icons.mic),title: new Text('Health History')),
        new BottomNavigationBarItem(icon: new Icon(Icons.settings),title: new Text('Settings')),
      ], onTap: (int i)=>debugPrint('Person touched $i'),),
          //In the above line i is used for the list inside.. here 0 for Hey and 1 for Record now
    );
  }
}