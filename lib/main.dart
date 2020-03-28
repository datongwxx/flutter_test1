import 'package:flutter/material.dart';
import 'demo/ListView_Demo.dart';
import 'demo/Drawer_Demo.dart';
import 'demo/BottomNavigationBar_Demo.dart';
import 'demo/NavigatorDemo.dart';
import 'demo/Form_Demo.dart';

void main() => runApp(App());

class App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: NavigatorDemo(),
      initialRoute: '/form',
      routes: {
        '/' : (context) => ListViewDemo(),
        '/about' : (context) => Page(title : 'About'),
        '/form' : (context) => FormDemo(),
      },
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
        splashColor: Colors.white70,
        accentColor: Colors.blue,
      )
    );
  }
}

class Hemo extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('nihao'),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              tooltip: 'Navigation', 
              onPressed: () => debugPrint('Search button is pressed'),
            ),
          ],
          elevation: 30.0,
          bottom: TabBar(
            unselectedLabelColor: Colors.black38,
            indicatorColor: Colors.black54,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorWeight: 1.0,
            tabs: <Widget>[
              Tab(icon: Icon(Icons.local_florist)),
              Tab(icon: Icon(Icons.change_history)),
              Tab(icon: Icon(Icons.directions_bike)),
            ],
            ),
        ),
        body: TabBarView(
          children: <Widget>[
            ListViewDemo(),
            Icon(Icons.change_history, size:120.0, color: Colors.black12),
            Icon(Icons.directions_bike, size:120.0, color: Colors.black12),
          ],
        ),
        drawer: DrawerDemo(),
        bottomNavigationBar: BottomNavigationBarDemo(),
      ),
    );
  }
}