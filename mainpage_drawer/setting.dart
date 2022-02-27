import 'package:flutter/material.dart';
import 'package:math_gsl8/mainpage.dart';
import 'package:colours/colours.dart';

class MySetting extends StatefulWidget {
  const MySetting({ Key? key }) : super(key: key);
  @override
  _MySettingState createState() => _MySettingState();
}

class _MySettingState extends State<MySetting> {
  // ignore: non_constant_identifier_names
  GlobalKey<FormState> _Formkey = GlobalKey<FormState>();
  TextEditingController _namalengkap = TextEditingController();
  TextEditingController _namaPanggilan = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF424874),
      appBar: AppBar(
        title: Text(
          'Setting',
          style: TextStyle(fontStyle: FontStyle.italic, fontSize: 20),
        ),
        backgroundColor: Color(0xFF8C9EFF),
      ),
      body: Container(
        child: Form(
            key: _Formkey,
            child: Column(
              children: [
                Padding(padding: EdgeInsets.all(10)),
                Text(
                  'Atur Kembali Nama Lengkap dan Panggilanmu :',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                  textAlign: TextAlign.left,
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: _namalengkap,
                  validator: (value) => (_namalengkap.text.isEmpty)
                      ? 'Mohon diisi dengan benar'
                      : null,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black87)),
                      prefixIcon: Icon(Icons.person, color: Colors.white),
                      hintText: 'Masukkan Nama Lengkapmu',
                      hintStyle: TextStyle(color: Colors.white),
                      labelText: 'Nama Lengkap',
                      labelStyle: TextStyle(color: Colors.white)),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: _namaPanggilan,
                  validator: (value) => (_namaPanggilan.text.isEmpty)
                      ? 'Mohon diisi dengan benar'
                      : null,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black87)),
                      prefixIcon: Icon(Icons.person,color: Colors.white,),
                      hintText: 'Masukkan Nama Panggilanmu',
                      hintStyle: TextStyle(color: Colors.white),
                      labelText: 'Nama Panggilan',
                      labelStyle: TextStyle(color: Colors.white)),
                ),
                SizedBox(
                  height: 20,
                ),
                Card(
                  color: Colours.thistle,
                  elevation: 5,
                  child: Container(
                      height: 50,
                      width: 125,
                      child: InkWell(
                          splashColor: Colors.white60,
                          onTap: () {
                            if (_Formkey.currentState!.validate()) {
                              Navigator.pushReplacement(context,
                                  MaterialPageRoute(builder: (context) {
                                return MainPage(Lengkap: _namalengkap.text, Pendek: _namaPanggilan.text);
                              }));
                            }
                          },
                          child: Center(
                            child: Text(
                              'MASUK',
                              style: TextStyle(
                                  fontSize: 30, color: Color(0xFF424874)),
                            ),
                          ))),
                ),
              ],
            )),
      ),
    );
  }
}