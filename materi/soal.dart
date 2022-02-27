import 'package:flutter/material.dart';
import 'evaluasi.dart';

class Latihan extends StatefulWidget {

  const Latihan({Key? key}) : super(key: key);

  @override
  _LatihanState createState() => _LatihanState();
}

class _LatihanState extends State<Latihan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              height: 50.0,
              color: Colors.green,
              onPressed: () {
                showDialog(
                    context: (context),
                    builder: (context) {
                      return AlertDialog(
                        title: Text(
                          'Perhatian !!!',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        content: Text(
                            'Kesempatan menjawab tiap soal hanya sekali. Apakah anda mau lanjut?'),
                        actions: [
                          ButtonBar(
                            alignment: MainAxisAlignment.center,
                            buttonPadding: EdgeInsets.symmetric(
                                horizontal: 15, vertical: 20),
                            children: [
                              ElevatedButton(
                                  onPressed: () {
                                    Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                KuisLatihan()));
                                  },
                                  child: Text('Iya')),
                              ElevatedButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: Text('Tidak'))
                            ],
                          )
                        ],
                      );
                    });
              },
              child: Text(
                'Kuis Materi ke-1',
                style: TextStyle(fontSize: 18.0, color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
