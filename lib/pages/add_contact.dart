import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kontak4/database_services.dart';

class AddContact extends StatefulWidget {
  @override
  _AddContactState createState() => _AddContactState();
}

class _AddContactState extends State<AddContact> {
  TextEditingController _nameController, _numberController;

  CollectionReference _ref;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _nameController = TextEditingController();
    _numberController = TextEditingController();
    // _ref = FirebaseFirestore.instance.reference().child('Contact');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        // backgroundColor: Color(0xFF1b1c1e),
        title: Text('Tambah Kontak'),
      ),
      body: Container(
        color: Colors.black,
        margin: EdgeInsets.all(0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 35,
            ),
            Center(
              child: Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://uas-paw-kelompokiv.000webhostapp.com/img/deo.jpg"),
                        fit: BoxFit.cover)),
              ),
            ),
            SizedBox(
              height: 35,
            ),

            ///ini tu kolom input
            Theme(
              data: Theme.of(context).copyWith(
                  primaryColor: Colors.blue, focusColor: Colors.purple),
              child: TextFormField(
                style: TextStyle(color: Colors.white),
                controller: _nameController,
                decoration: InputDecoration(
                    border: UnderlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0)),
                    hintText: 'Masukan Nama',
                    hintStyle: TextStyle(color: Colors.white54),
                    prefixIcon: Icon(
                      Icons.account_circle,
                      color: Colors.white54,
                      size: 25,
                    ),
                    fillColor: Color(0xFF1b1c1e),
                    filled: true,
                    contentPadding: EdgeInsets.all(15)),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            TextFormField(
              controller: _numberController,
              decoration: InputDecoration(
                  border: UnderlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0)),
                  hintText: 'Masukan Nomor',
                  hintStyle: TextStyle(color: Colors.white54),
                  prefixIcon: Icon(
                    Icons.phone_android,
                    color: Colors.white54,
                    size: 25,
                  ),
                  fillColor: Color(0xFF1b1c1e),
                  filled: true,
                  contentPadding: EdgeInsets.all(15)),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 150,
                  height: 50,
                  margin: EdgeInsets.only(top: 20),
                  child: RaisedButton(
                    child: Text(
                      'Batal',
                      style: TextStyle(
                        fontSize: 20,
                        color: Color(0xFF418FF5),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    onPressed: () {
                      batal();
                    },
                    color: Colors.black,
                  ),
                ),
                Container(
                  width: 150,
                  height: 50,
                  margin: EdgeInsets.only(top: 20),
                  child: RaisedButton(
                    child: Text(
                      'Simpan',
                      style: TextStyle(
                        fontSize: 20,
                        color: Color(0xFF418FF5),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    onPressed: () {
                      // return saveContact();
                      DatabaseServices().createOrUpdateProduct("1",
                          name: "masker", number: 089504736916);
                    },
                    color: Colors.black,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  void batal() {
    Navigator.pop(context);
  }

  // void saveContact() {
  //   // String name = _nameController.text;
  //   // String number = _numberController.text;

  //   // Map<String, String> contact = {
  //   //   'name': name,
  //   //   "number": number,
  //   // };
  //   // _ref.push().set(contact).then((value)
  //   // {
  //   //   Navigator.pop(context);
  //   // });
  // }
}
