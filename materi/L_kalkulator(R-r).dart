import 'package:flutter/material.dart';
import 'dart:math';
import 'package:google_fonts/google_fonts.dart';

class CALC1R extends StatefulWidget {
  const CALC1R({Key? key}) : super(key: key);

  @override
  _CALC1RState createState() => _CALC1RState();
}

class _CALC1RState extends State<CALC1R> {
  double d = 0.0;
  double l = 0.0;

  TextEditingController _a = TextEditingController();
  TextEditingController _c = TextEditingController();

  hitung() {
    double a = double.parse(_a.text);
    double c = double.parse(_c.text);
    d = (a * a) - ((c) * (c));
    l = sqrt(d);

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFA6B1E1),
      appBar: AppBar(
        title: Text('Kalkulator GSPL'),
        backgroundColor: Color(0xFF424874),
      ),
      body: Container(
          margin: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
          child: ListView(
            children: [
              Text(
                'Kalkulator GSPL:',
                style:
                    GoogleFonts.lato(fontSize: 25, fontWeight: FontWeight.w300),
              ),
              Text(
                'Untuk Mengetahui Selisih kedua jari-jari Lingkaran',
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
                        'Assets/Luar.png',
                      ),
                    )),
                  ),
                  Positioned(
                      bottom: 90,
                      left: 200,
                      child: Text(
                        _a.text,
                        style: TextStyle(fontSize: 25),
                      )),
                  Positioned(
                      top: 15,
                      left: 190,
                      child: Text(
                        _c.text,
                        style: TextStyle(fontSize: 25),
                      )),
                      Positioned(
                      top: 45,
                      left: 60,
                      child: Text(
                        '?',
                        style: TextStyle(fontSize: 25),
                      )),
                  Positioned(
                      bottom: 40,
                      right: 35,
                      child: Text(
                        '?',
                        style: TextStyle(fontSize: 25),
                      )),
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
                          'Selisih Kedua Jari-jari Lingkaran:',
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
                      labelText: 'Jarak Kedua Pusat Lingkaran',
                      border: OutlineInputBorder()),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: TextFormField(
                  controller: _c,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      labelText: 'Panjang Garis Singgung Persekutuan Luar',
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
