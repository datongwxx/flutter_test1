import 'package:flutter/material.dart';

class DrawerDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Drawer(
          child: ListView(
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: Text('wanghao', style:TextStyle(fontWeight: FontWeight.bold)), 
                accountEmail: Text('wanghao@163.com'),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage('images/4070682_193057082634_2.jpg'),
                ),
                decoration: BoxDecoration(
                  color: Colors.yellow[400],
                  image: DecorationImage(
                    image: AssetImage('images/4070682_193057082634_2.jpg'),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                      Colors.yellow[400].withOpacity(0.6),
                      BlendMode.hardLight,
                    )
                  ),
                ),
                
              ),
              ListTile(
                title: Text('Messages', textAlign: TextAlign.right),
                trailing: Icon(Icons.message, color:Colors.black12, size: 22.0),
                onTap: () => Navigator.pop(context),
              ),
              ListTile(
                title: Text('Settings', textAlign: TextAlign.right),
                trailing: Icon(Icons.settings, color:Colors.black12, size: 22.0),
                onTap: () => Navigator.pop(context),
              ),
              ListTile(
                title: Text('favorite', textAlign: TextAlign.right),
                trailing: Icon(Icons.favorite, color:Colors.black12, size: 22.0),
                onTap: () => Navigator.pop(context),
              ),
            ],
          )
        );
  }
}