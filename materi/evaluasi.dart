import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

var skorAkhir = 0;
var nomorPertanyaan = 0;
var kuis = SoalKuis();

class SoalKuis {
  var image = [
    "no_1",
    "no_2",
    "no_3",
    "no_4",
    "no_5",
    "no_6",
    "no_7",
    "no_8",
    "no_9",
    "no_10",
  ];

  var masalah = [
    "Perhatikan gambar diatas. Diketahui jari-jari lingkaran berturut-turut adalah 2 cm dan 5 cm. Jika jarak pusat kedua lingkaran adalah 5 cm. Tentukan panjang garis singgungnya . . .",
    "Diketahui Panjang garis singgung persekutuan luar dua lingkaran adalah 24 cm. Jika jari-jari lingkaran berpusat di A yaitu 9 cm dan jari-jari lingkaran berpusat di B adalah 2 cm. Berapakah jarak pusat antar kedua lingkaran . . . .",
    "Diketahui dua lingkaran berbeda. Jari-jari lingkaran pertama 15 cm, sedangkan jari-jari lingkaran kedua adalah 8 cm. Jika jarak pusat kedua lingkaran tersebut adalah 25 cm, maka panjang garis singgung persekutuan luar kedua lingkaran adalah . . . .",
    "Perhatikan gambar diatas. Diketahui dua lingkaran berpusat di A dan B dengan jari-jari berturut-turut adalah 7 cm dan 2 cm. Sedangkan, panjang garis singgung persekutuan luar kedua lingkaran tersebut adalah 12 cm. maka tentukan jarak lingkaran berpusat di A dengan lingkaran berpusat di B . . .",
    "Diketahui dua lingkaran dengan jarak antarpusatnya 20 cm. Jika masing-masing lingkaran memiliki jari-jari adalah 4 cm dan 8 cm. Maka panjang garis singgung lingkaran dalam dua lingkaran adalah . . . .",
    "Diketahui lingkaran A dan lingkaran B masing-masing memiliki jari-jari adalah 5 cm dan 4 cm. Tentukan jarak antar kedua lingkaran tersebut jika panjang garis singgung persekutuan dalam dua lingkaran adalah 12 cm",
    "Diketahui dua lingkaran dengan jari-jari yang berbeda. Jika jarak kedua pusat lingkaran tersebut adalah 20 cm, dan panjang garis singgung persekutuan dalam kedua lingkaran adalah 12 cm. jika salah satu lingkaran memiliki jari-jari 10 cm maka tentukan jari-jari lingkaran sisanya . . .",
    "Perhatikan gambar diatas. Diketahui lingkaran berpusat di A berjari-jari 2 cm sedangkan lingkaran berpusat di B jari-jarinya adalah 10 cm. jika jarak kedua pusat lingkaran 20 cm. Tentukan panjang garis singgung lingkaran dalam dua lingkaran tersebut . . .",
    "Diketahui pusat lingkaran di titik A dan di titik B. Panjang garis singgung dalam kedua lingkaran tersebut adalah 30 cm. Tentukan jarak kedua pusat lingkaran jika jari-jari kedua lingkaran tersebut 4 cm dan 14 cm.",
    "Jika panjang garis dari pusat lingkaran ke titik B adalah 45 cm dan panjang garis singgungnya BC adalah 36 cm. Maka panjang jari jari lingkaran AC adalah . . . .",
  
  ];

  var choice = [
    ["a. 3 cm", "b. 2 cm", "c. 5 cm", "d. 4 cm"],
    ["a. 26 cm", "b. 22 cm", "c. 25 cm", "d. 18 cm"],
    ["a. 26 cm", "b. 21 cm", "c. 24 cm", "d. 20 cm"],
    ["a. 13 cm", "b. 12 cm", "c. 9 cm", "d. 8 cm"],
    ["a. 18 cm", "b. 16 cm", "c. 14 cm", "d. 12 cm"],
    ["a. 13 cm", "b. 14 cm", "c. 15 cm", "d. 16 cm"],
    ["a. 6 cm", "b. 7 cm", "c. 8 cm", "d. 9 cm"],
    ["a. 13 cm", "b. 14 cm", "c. 15 cm", "d. 16 cm"],
    ["a. 28 cm", "b. 30 cm", "c. 32 cm", "d. 34 cm"],
    ["a. 27 cm", "b. 37 cm", "d. 47 cm", "d. 57 cm"],
  ];

  var benar = [
    "d. 4 cm",
    "c. 25 cm",
    "c. 24 cm",
    "a. 13 cm",
    "b. 16 cm",
    "c. 15 cm",
    "a. 6 cm",
    "d. 16 cm",
    "b. 30 cm",
    "a. 27 cm",
  ];
}

class KuisLatihan extends StatefulWidget {
  const KuisLatihan({
    Key? key,
  }) : super(key: key);

  @override
  _KuisLatihanState createState() => _KuisLatihanState();
}

class _KuisLatihanState extends State<KuisLatihan> {
  void updateQuestion() {
    setState(() {
      if (nomorPertanyaan == kuis.masalah.length - 1) {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
                builder: (context) => Summary(
                      skor: skorAkhir,
                    )));
      } else {
        nomorPertanyaan++;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Soal Kuis'),
        ),
        body: ListView(
          children: [
            Container(
          margin: const EdgeInsets.all(10.0),
          alignment: Alignment.topCenter,
          child: Column(
            children: [
              Padding(padding: EdgeInsets.all(10.0)),
              Container(
                alignment: Alignment.centerRight,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'soal ${nomorPertanyaan + 1} of ${kuis.masalah.length}',
                      style: TextStyle(fontSize: 20.0),
                    ),
                    Text(
                      'Nilai: $skorAkhir',
                      style: TextStyle(fontSize: 20.0),
                    ),
                  ],
                ),
              ),
              Padding(padding: EdgeInsets.all(10.0)),
              Image.asset("Assets/${kuis.image[nomorPertanyaan]}.png",fit: BoxFit.contain,),
              Padding(padding: EdgeInsets.all(10.0)),
              Container(
                decoration: BoxDecoration(color: Colors.lightBlue),
                margin: const EdgeInsets.all(5.0),
                child: Text(kuis.masalah[nomorPertanyaan],textAlign: TextAlign.justify,),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //button 1
                  MaterialButton(
                    minWidth: 120.0,
                    color: Colors.blueGrey,
                    onPressed: () {
                      if (kuis.choice[nomorPertanyaan][0] ==
                          kuis.benar[nomorPertanyaan]) {
                        debugPrint("Jawaban benar");
                        skorAkhir++;
                      } else {
                        debugPrint("Jawaban salah");
                      }
                      updateQuestion();
                    },
                    child: Text(
                      kuis.choice[nomorPertanyaan][0],
                      style: TextStyle(fontSize: 15.0, color: Colors.white),
                    ),
                  ),
                  //button 2
                  MaterialButton(
                    minWidth: 120.0,
                    color: Colors.blueGrey,
                    onPressed: () {
                      if (kuis.choice[nomorPertanyaan][1] ==
                          kuis.benar[nomorPertanyaan]) {
                        debugPrint("Jawaban benar");
                        skorAkhir++;
                      } else {
                        debugPrint("Jawaban salah");
                      }
                      updateQuestion();
                    },
                    child: Text(
                      kuis.choice[nomorPertanyaan][1],
                      style: TextStyle(fontSize: 15.0, color: Colors.white),
                    ),
                  ),
                ],
              ),
              Padding(padding: EdgeInsets.all(10.0)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MaterialButton(
                    minWidth: 120.0,
                    color: Colors.blueGrey,
                    onPressed: () {
                      if (kuis.choice[nomorPertanyaan][2] ==
                          kuis.benar[nomorPertanyaan]) {
                        debugPrint("Jawaban benar");
                        skorAkhir++;
                      } else {
                        debugPrint("Jawaban salah");
                      }
                      updateQuestion();
                    },
                    child: Text(
                      kuis.choice[nomorPertanyaan][2],
                      style: TextStyle(fontSize: 15.0, color: Colors.white),
                    ),
                  ),
                  //button 4
                  MaterialButton(
                    minWidth: 120.0,
                    color: Colors.blueGrey,
                    onPressed: () {
                      if (kuis.choice[nomorPertanyaan][3] ==
                          kuis.benar[nomorPertanyaan]) {
                        debugPrint("Jawaban benar");
                        skorAkhir++;
                      } else {
                        debugPrint("Jawaban salah");
                      }
                      updateQuestion();
                    },
                    child: Text(
                      kuis.choice[nomorPertanyaan][3],
                      style: TextStyle(fontSize: 15.0, color: Colors.white),
                    ),
                  ),
                ],
              ),
              Padding(padding: EdgeInsets.all(10.0)),
            ],
          ),
        ),
          ],
        )
      ),
    );
  }
}

class Summary extends StatelessWidget {
  final int skor;
  Summary({Key? key, required this.skor}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        backgroundColor: Color(0xFF424874),
        appBar: AppBar(
          backgroundColor: Color(0xFF8C9EFF),
          title: Text(
            'Hasil Kuis',
          ),
        ),
        body: Container(
            child: ListView(
          children: [
            const SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 25),
              alignment: Alignment.center,
              decoration: BoxDecoration(color: Colors.blueGrey),
              child: Text(
                'Kamu berhasil menjawab semua pertanyaannya',
                style: TextStyle(fontSize: 25, color: Colors.white70),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              height: 200,
              width: 200,
              margin: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
              alignment: Alignment.center,
              child: Image(image: AssetImage('Assets/Sum.gif')),
            ),
            Padding(padding: EdgeInsets.all(10)),
            Text(
              'Nilaimu : ${skor * 10}',
              style: TextStyle(fontSize: 30, color: Colors.white70),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 25),
              alignment: Alignment.center,
              child: Row(
                children: [
                  Text(
                    'Soal Benar : $skor ',
                    style: TextStyle(fontSize: 23, color: Colors.white70),
                  ),
                  Padding(padding: EdgeInsets.all(20)),
                  Text(
                    'Soal Salah : ${10 - skor}',
                    style: TextStyle(fontSize: 23, color: Colors.white70))
                ],
              ),
            ),
            Padding(padding: EdgeInsets.all(25.0)),
            MaterialButton(
              minWidth: double.infinity,
              color: Colors.blueGrey,
              onPressed: (){
              Navigator.pop(context);

              skorAkhir=0;
              nomorPertanyaan=0;
              },
              child: Text('Reset Kuis', style: TextStyle(fontSize: 50),),)
          ],
        )),
      ),
    );
  }
}
