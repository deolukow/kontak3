import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:kontak4/new/provider/google_sign_in.dart';
import 'package:provider/provider.dart';
import '../theme/colors.dart';
import 'add_contact.dart';
import 'item_card.dart';
import '../google/authentification.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

void main() {
  runApp(Hal3());
}

class Hal3 extends StatefulWidget {
  @override
  _Hal3State createState() => _Hal3State();
}

class _Hal3State extends State<Hal3> {
  Future<void> signOut() async {
    await Authentification().signOut();
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    CollectionReference dataKontak = firestore.collection('dataKontak');

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
                  width: 110,
                ),
                Row(
                  children: <Widget>[
                    IconButton(
                      icon: Icon(
                        Icons.logout,
                        size: 23,
                        color: Colors.blue,
                      ),
                      //ini klo tekan mo logout
                      onPressed: () {
                        final provider = Provider.of<GoogleSignInProvider>(
                            context,
                            listen: false);
                        provider.logout();
                      },
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.add_outlined,
                        size: 28,
                        color: Colors.blue,
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
                                  "https://yt3.ggpht.com/yti/ANoDKi714iJfc29mVF_OjmIirAOkYaZrUp4CzSsK_ULu=s88-c-k-c0x00ffffff-no-rj-mo"),
                              fit: BoxFit.cover)),
                    )
                  ],
                )
              ],
            ),
          ),
        ),

        //body
        body: Container(
          color: Colors.black,
          child: ListView(
            children: [
              StreamBuilder<QuerySnapshot>(
                  stream: dataKontak.orderBy('nama').snapshots(),
                  builder: (_, snapshot) {
                    if (snapshot.hasData) {
                      return Column(
                        children: snapshot.data.docs
                            .map((e) => ItemCard(
                                  e.data()['nama'],
                                  e.data()['nomor'],
                                  onDelete: () {
                                    dataKontak.doc(e.id).delete();
                                  },
                                ))
                            .toList(),
                      );
                    } else {
                      return Text('Loading');
                    }
                  })
            ],
          ),
        ));
  }
}
