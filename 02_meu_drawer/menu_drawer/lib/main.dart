import 'package:flutter/material.dart';
import 'package:menu_drawer/theme.dart';

const appName = "Menu Drawer";
void main() {
  runApp(const MenuDrower());
}

class MenuDrower extends StatelessWidget {
  const MenuDrower({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appName,
      themeMode: ThemeMode.light,
      theme: MenuDrawerTheme.light,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Menu Drawer",
              style: TextStyle(color: Colors.pink.shade100)),
        ),
        endDrawer: Drawer(
          backgroundColor: Colors.pink.shade50,
          child: ListView(
            padding: EdgeInsets.zero,
            children: const <Widget>[
              ListTile(
                leading: Icon(Icons.flash_on, color: Colors.blue),
                title: Text('Flutter', style: TextStyle(color: Colors.brown)),
                subtitle: Text("Tudo são Widgets",
                    style: TextStyle(color: Colors.brown)),
                trailing: Icon(Icons.arrow_forward_ios_rounded),
              ),
              ListTile(
                leading: Icon(
                  Icons.emoji_emotions_outlined,
                  color: Colors.red,
                ),
                title: Text('Dart', style: TextStyle(color: Colors.brown)),
                subtitle: Text("É muito forte",
                    style: TextStyle(color: Colors.brown)),
                trailing: Icon(Icons.arrow_forward_ios_rounded),
              ),
              ListTile(
                leading: Icon(Icons.coffee, color: Colors.brown),
                title:
                    Text('cafessíneo', style: TextStyle(color: Colors.brown)),
                subtitle:
                    Text("Quero cafeeé", style: TextStyle(color: Colors.brown)),
                trailing: Icon(Icons.arrow_forward_ios_rounded),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
