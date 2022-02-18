import 'package:appbar_icon/theme.dart';
import 'package:flutter/material.dart';

import 'theme.dart';

const appName = "Coffe";
void main() => runApp(const MyAppBar());

class MyAppBar extends StatelessWidget {
  const MyAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appName,
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: MyAppBarTheme.light,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            appName,
            style: TextStyle(color: Colors.brown),
          ),
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(
                  Icons.coffee,
                  color: Colors.brown,
                ),
                onPressed: () {},
                // tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
              );
            },
          ),
        ),
      ),
    );
  }
}
