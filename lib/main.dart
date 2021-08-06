import 'package:flutter/material.dart';
import './screens/garage_screen.dart';
import './screens/user_screen.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Moja garaza',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        canvasColor: Color.fromRGBO(164, 195, 178, 1),
      ),
      home: UserScreen(),
      routes: {
        GarageScreen.routeName: (context) => GarageScreen(),
      },
    );
  }
}


