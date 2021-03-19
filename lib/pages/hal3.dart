import 'package:flutter/material.dart';
import '../theme/colors.dart';
import 'add_contact.dart';

void main() {
  runApp(Hal3());
}

class Hal3 extends StatefulWidget {
  @override
  _Hal3State createState() => _Hal3State();
}

class _Hal3State extends State<Hal3> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF1b1c1e),
        title: Padding(
          padding: const EdgeInsets.only(right: 2, left: 2),
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              // Icon(Icons.contact_page),
              // SizedBox(
              //   width: 140,
              // ),
              // SvgPicture.asset(
              //   "assets/images/youtube.svg",
              //   width: 35,
              // ),
              Text(
                'Telepon',
                style: TextStyle(
                    color: white,
                    fontSize: 27,
                    height: 1,
                    fontFamily: 'Gothic',
                    fontWeight: FontWeight.bold,
                    letterSpacing: 0),
              ),
              SizedBox(
                width: 160,
              ),
              Row(
                children: <Widget>[
                  IconButton(
                    icon: Icon(
                      Icons.add_outlined,
                      size: 28,
                      color: Colors.white,
                    ),
                    //ini klo tekan mo mengarah ke tambah input nmor
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (_) {
                        return AddContact();
                      }));
                    },
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  IconButton(
                      icon: Icon(Icons.search_outlined, color: Colors.white),
                      onPressed: () {}),
                  SizedBox(
                    width: 9,
                  ),
                  Container(
                    width: 28,
                    height: 28,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://uas-paw-kelompokiv.000webhostapp.com/img/deo.jpg"),
                            fit: BoxFit.cover)),
                  )
                ],
              )
            ],
          ),
        ),
      ),

      //body
      body: GridView.count(
        crossAxisSpacing: 3,
        mainAxisSpacing: 3,
        crossAxisCount: 2,
        children: <Widget>[
          Container(
            color: black,
          ),
          Container(
            color: Colors.blue,
          ),
          Container(
            color: black,
          ),
          Container(
            color: Colors.blue,
          ),
          Container(
            color: black,
          ),
          Container(
            color: Colors.blue,
          ),
          Container(
            color: black,
          ),
          Container(
            color: Colors.blue,
          ),
          Container(
            color: black,
          ),
          Container(
            color: Colors.blue,
          ),
          Container(
            color: black,
          ),
          Container(
            color: Colors.blue,
          ),
        ],
      ),
    );
  }
}
