import 'dart:math';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CALC1P extends StatefulWidget {
  const CALC1P({ Key? key }) : super(key: key);

  @override
  _CALC1PState createState() => _CALC1PState();
}

class _CALC1PState extends State<CALC1P> {
  double d = 0.0;
  double l = 0.0;

  TextEditingController _a = TextEditingController();
  TextEditingController _b = TextEditingController();
  TextEditingController _c = TextEditingController();

  hitung() {
    double a = double.parse(_a.text);
    double b = double.parse(_b.text);
    double c = double.parse(_c.text);
    d = (c * c) + ((a - b) * (a - b));
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
                'Untuk Mengetahui Jarak Pusat antar Kedua Lingkaran',
                style: TextStyle(fontSize: 18),
                textAlign: TextAlign.justify,
              ),
              Padding(padding: EdgeInsets.all(5)),
              Stack(
                children: [
                  Container(
                    decoration:BoxDecoration(
                      border: Border.all(width: 5)
                    ),
                    child: Center(
                        child: Padding(
                      padding: EdgeInsets.only(top: 10, bottom: 10),
                      child: Image.asset('Assets/Luar.png',),
                    )),
                  ),
                  Positioned(
                      top: 45,
                      left: 60,
                      child: Text(
                        _a.text,
                        style: TextStyle(fontSize: 25),
                      )),
                  Positioned(
                      bottom: 40,
                      right: 35,
                      child: Text(
                        _b.text,
                        style: TextStyle(fontSize: 25),
                      )),
                     Positioned(
                    top: 15,
                    left: 190,
                    child: Text(_c.text, style: TextStyle(fontSize: 25),)),
                    Positioned(
                      bottom: 90,
                      left: 200,
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
                          'Jarak Pusat antar Kedua Kedua Lingkaran:',
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(top: 15),
                        child: Text(
                          l.toString() +' Cm',
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