import 'package:flutter/material.dart';
import '../theme/colors.dart';

void main() {
  runApp(Hal5());
}

class Hal5 extends StatefulWidget {
  @override
  _Hal5State createState() => _Hal5State();
}

class _Hal5State extends State<Hal5> {
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
            color: white,
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
