import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {

@override
    MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        //Setting the footer buttons
        persistentFooterButtons: <Widget>[
          Icon(Icons.label_important),
          Icon(Icons.label_outline),
          Icon(Icons.view_agenda),
        ],
        //For Setting the Floating Button
        floatingActionButton: FloatingActionButton(
          onPressed: (){},
          child: Icon(Icons.videocam),
        ),
        //For Setting the action button at parent top(i.e)actionbar at right side
        //floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
        //For Setting the action button at parent top(i.e)actionbar at left side
        //floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
        //For Setting the action button at parent bottom(i.e)actionbar at right side
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        //For Setting the action button at parent bottom at partially attached with bottom tab widget(i.e)actionbar at right side
        //floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
        //For Setting the drawer icon at left side of the actionbar
        drawer: Drawer(),
        //For Setting the drawer icon at right side of the actionbar
        //endDrawer: Drawer(),
        //For Setting the Bottom Navigation Drawer
        bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.laptop_mac),
              title: Text('One')
              ),
               BottomNavigationBarItem(
              icon: Icon(Icons.video_label),
               title: Text('Two')
              ),
          ]
        ),
        appBar: AppBar(
          //Set the App Title
          title: Text('Flutter App'),
          //Set the text at center
          centerTitle: true,
          //Set the Elevation below the actionbar
          elevation: 0.0,
          //For Setting the notification icon color
          brightness: Brightness.dark,
          //For setting the icons at the left side of the actionbar
          //leading: Icon(Icons.home),
          //For setting the icons at the right side of the actionbar
          //actions: <Widget>[
            //Icon(Icons.access_time),
          //],
        ),
      ),
    );
  }
}

