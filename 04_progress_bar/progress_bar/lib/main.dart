import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.light,
        home: SizedBox(
          height: 200,
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // ElevatedButton(
                //   onPressed: () {},
                //   child: const Text("Update"),
                // ),
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.upload),
                  label: Text("Update"),
                ),
                Text("Clique para iniciar o upload"),
                LinearProgressIndicator(
                  minHeight: 15,
                  color: Colors.amber.shade300,
                  backgroundColor: Colors.pink,
                ),
              ],
            ),
          ),
        ));
  }
}
