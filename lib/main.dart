import 'package:flutter/material.dart';
import 'package:joy_app/my_app.dart';
import 'package:toast/toast.dart';
void main() {
  runApp(HomePage());
}



class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MyApp();
  }
}
