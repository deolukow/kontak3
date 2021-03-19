import 'package:flutter/material.dart';
import '../theme/colors.dart';

void main() {
  runApp(Hal4());
}

class Hal4 extends StatefulWidget {
  @override
  _Hal4State createState() => _Hal4State();
}

class _Hal4State extends State<Hal4> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        crossAxisSpacing: 3,
        mainAxisSpacing: 3,
        crossAxisCount: 2,
        children: <Widget>[
          Container(
            color: black,
          ),
          Container(
            color: red,
          ),
          Container(
            color: black,
          ),
          Container(
            color: red,
          ),
          Container(
            color: black,
          ),
          Container(
            color: red,
          ),
          Container(
            color: black,
          ),
          Container(
            color: red,
          ),
        ],
      ),
    );
  }
}
