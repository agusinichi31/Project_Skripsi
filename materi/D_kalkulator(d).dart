import 'dart:math';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CALC2d extends StatefulWidget {
  @override
  _CALC2dState createState() => _CALC2dState();
}

class _CALC2dState extends State<CALC2d> {
  double d = 0.0;
  double l = 0.0;

  TextEditingController _a = TextEditingController();
  TextEditingController _b = TextEditingController();
  TextEditingController _c = TextEditingController();

  hitung() {
    double a = double.parse(_a.text);
    double b = double.parse(_b.text);
    double c = double.parse(_c.text);
    d = (c * c) - ((a + b) * (a + b));
    l = sqrt(d);

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFA6B1E1),
      appBar: AppBar(
        title: Text('Kalkulator GSPD'),
        backgroundColor: Color(0xFF424874),
      ),
      body: Container(
          margin: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
          child: ListView(
            children: [
              Text(
                'Kalkulator GSPD:',
                style:
                    GoogleFonts.lato(fontSize: 25, fontWeight: FontWeight.w300),
              ),
              Text(
                'Untuk Mengetahui nilai Panjang garis Singgung Persekutuan Dalam',
                style: TextStyle(fontSize: 18),
                textAlign: TextAlign.justify,
              ),
              Padding(padding: EdgeInsets.all(5)),
              Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(border: Border.all(width: 5)),
                    child: Center(
                        child: Padding(
                      padding: EdgeInsets.only(top: 10, bottom: 10),
                      child: Image.asset(
                        'Assets/Dalam.png',
                      ),
                    )),
                  ),
                  Positioned(
                      top: 25,
                      left: 95,
                      child: Text(
                        _a.text,
                        style: TextStyle(fontSize: 25),
                      )),
                  Positioned(
                      top: 115,
                      right: 40,
                      child: Text(
                        _b.text,
                        style: TextStyle(fontSize: 25),
                      )),
                  Positioned(
                      bottom: 75,
                      left: 210,
                      child: Text(
                        _c.text,
                        style: TextStyle(fontSize: 25),
                      )),
                      Positioned(
                      top: 45,
                      left: 210,
                      child: Text(
                        '?',
                        style: TextStyle(fontSize: 25),
                      ))
                ],
              ),
              Padding(padding: EdgeInsets.all(5)),
              Center(
                child: Container(
                  height: 100,
                  width: 420,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.red),
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.only(top: 15),
                        child: Text(
                          'Panjang Garis Singgung Dalam:',
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(top: 15),
                        child: Text(
                          l.toString() + ' Cm',
                          style: TextStyle(fontSize: 25, color: Colors.black),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: TextFormField(
                  controller: _a,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      labelText: 'Jari-jari Lingkaran 1',
                      border: OutlineInputBorder()),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: TextFormField(
                  controller: _b,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      labelText: 'Jari-jari Lingkaran 2',
                      border: OutlineInputBorder()),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: TextFormField(
                  controller: _c,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      labelText: 'Jarak Kedua Lingkaran',
                      border: OutlineInputBorder()),
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(top: 30, bottom: 20),
                      width: 200,
                      height: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: ElevatedButton(
                        child: Text(
                          'Hitung',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        onPressed: () {
                          hitung();
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}

Widget rubahGambar() => Stack(
      children: [],
    );
