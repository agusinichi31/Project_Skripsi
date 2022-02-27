import 'package:flutter/material.dart';
import 'package:math_gsl8/chewie_test.dart';
import 'package:video_player/video_player.dart';
import 'package:google_fonts/google_fonts.dart';

class GSPD extends StatefulWidget {
  const GSPD({Key? key}) : super(key: key);

  @override
  _GSPDState createState() => _GSPDState();
}

class _GSPDState extends State<GSPD> {
  //KD dan Tujuan Pembelajaran
  bool isVisible = false;
  bool isVisible1 = false;
  bool isVisible2 = false;
  bool isVisible3 = false;

  @override
  Widget build(BuildContext context) {
    TabBar myTabBar = TabBar(
        indicator: BoxDecoration(
          color: Color(0xFF424874),
          border: Border(
            bottom: BorderSide(color: Colors.black38, width: 5),
            top: BorderSide(color: Colors.black38, width: 5),
            left: BorderSide(color: Colors.black38, width: 5),
            right: BorderSide(color: Colors.black38, width: 5),
          ),
        ),
        tabs: [
          Tab(
            icon: Icon(Icons.library_add),
            child: Text(
              'KD & Tujuan Pembelajaran',
              style: TextStyle(fontSize: 12),
              textAlign: TextAlign.center,
            ),
          ),
          Tab(
            icon: Icon(Icons.library_add),
            child: Text(
              'Garis Singgung Persekutuan Dalam',
              style: TextStyle(fontSize: 10),
              textAlign: TextAlign.center,
            ),
          ),
          Tab(
            icon: Icon(Icons.library_add),
            child: Text(
              'Melukis Garis Singgung Persekutuan Dalam',
              style: TextStyle(fontSize: 10),
              textAlign: TextAlign.center,
            ),
          )
        ]);
    return Scaffold(
      body: DefaultTabController(
        length: 3,
        child: Scaffold(
          backgroundColor: Color(0xFFFFEFD5),
          appBar: AppBar(
              title: Text(
                'Garis Singgung Persekutuan Dalam',
                style: TextStyle(fontSize: 18),
              ),
              backgroundColor: Color(0xFF8C9EFF),
              bottom: PreferredSize(
                preferredSize: Size.fromHeight(myTabBar.preferredSize.height),
                child: Container(
                  color: Colors.lightBlue,
                  child: myTabBar,
                ),
              )),
          body: TabBarView(children: [
            // Kompetensi Dasar dan Tujuan Pembelajaran
            Center(
              child: Container(
                margin: EdgeInsets.symmetric(
                  horizontal: 5,
                  vertical: 15,
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.cyan),
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(
                        vertical: 5,
                        horizontal: 100,
                      ),
                      child: ElevatedButton.icon(
                          onPressed: () {
                            setState(() {
                              isVisible = !isVisible;
                            });
                          },
                          icon: Icon(Icons.arrow_forward),
                          label: Text(
                            'Kompetensi Dasar',
                          )),
                    ),
                    Visibility(
                      visible: isVisible,
                      child: Container(
                        width: 350,
                        height: 175,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.grey),
                        child: ListView(
                          children: [
                            Text(
                              'Kompetensi Dasar',
                              style: TextStyle(fontSize: 20),
                              textAlign: TextAlign.center,
                            ),
                            Padding(padding: EdgeInsets.all(10)),
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 10),
                              child: Text(
                                  '3.8 Menjelaskan garis singgung persekutuan luar dan dalam beserta cara melukisnya',
                                  style: TextStyle(
                                    fontSize: 15,
                                  ),
                                  textAlign: TextAlign.justify),
                            ),
                            Padding(padding: EdgeInsets.all(10)),
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 10),
                              child: Text(
                                '4.8 Menyelesaikan masalah yang berkaitan dengan garis singgung persekutuan luar dan persekutuan dalam dua lingkaran',
                                textAlign: TextAlign.justify,
                                style: TextStyle(fontSize: 15),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(
                        vertical: 5,
                        horizontal: 100,
                      ),
                      child: ElevatedButton.icon(
                          onPressed: () {
                            setState(() {
                              isVisible1 = !isVisible1;
                            });
                          },
                          icon: Icon(Icons.arrow_forward),
                          label: Text(
                            'Tujuan Pembelajaran',
                            style: TextStyle(fontSize: 12),
                          )),
                    ),
                    Visibility(
                      visible: isVisible1,
                      child: Container(
                        width: 350,
                        height: 200,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.grey),
                        child: ListView(
                          children: [
                            Text(
                              'Tujuan Pembelajaran',
                              style: TextStyle(fontSize: 20),
                              textAlign: TextAlign.center,
                            ),
                            Padding(padding: EdgeInsets.all(10)),
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 10),
                              child: Text(
                                  '1. Melalui Media Pembelajaran ini siswa mampu menemukan rumus garis singgung persekutuan dalam antar dua lingkaran.',
                                  style: TextStyle(
                                    fontSize: 15,
                                  ),
                                  textAlign: TextAlign.justify),
                            ),
                            Padding(padding: EdgeInsets.all(10)),
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 10),
                              child: Text(
                                '2. Melalui media pembelajaran ini siswa mampu menyelesaikan permasalahan yang berkaitan dengan garis singgung persekutuan dalam antar dua lingkaran.',
                                textAlign: TextAlign.justify,
                                style: TextStyle(fontSize: 15),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // Garis Singgung Persekutuan Dalam
            Center(
              child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.grey),
                  child: ListView(
                    children: [
                      Padding(padding: EdgeInsets.all(2)),
                      Text('   Materi:',
                          style: TextStyle(
                              fontSize: 20, fontStyle: FontStyle.italic)),
                      Padding(padding: EdgeInsets.all(2)),
                      Text('   Garis singgung persekutuan dalam dua lingkaran',
                          style: TextStyle(
                              fontSize: 15, fontStyle: FontStyle.italic)),
                      Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: 50, vertical: 5),
                        height: 50,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary:
                                  Colors.redAccent, //background color of button
                              side: BorderSide(
                                  width: 3,
                                  color: Colors.brown), //border width and color
                              elevation: 3, //elevation of button
                              shape: RoundedRectangleBorder(
                                  //to set border radius to button
                                  borderRadius: BorderRadius.circular(30)),
                              padding: EdgeInsets.all(
                                  10) //content padding inside button
                              ),
                          onPressed: () {
                            setState(() {
                              isVisible2 = !isVisible2;
                            });
                          },
                          child: Text(
                            'Animasi',
                            style: TextStyle(fontSize: 25),
                          ),
                        ),
                      ),
                      Visibility(
                          visible: isVisible2,
                          child: Container(
                            height: 575,
                            width: 300,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.white24),
                            child: ListView(
                              children: [
                                SizedBox(
                                  height: 15,
                                ),
                                Image(
                                    image:
                                        AssetImage('Assets/Dalam_Animasi.gif')),
                                SizedBox(
                                  height: 10,
                                ),
                                Text('Konsep: ',
                                    style: TextStyle(fontSize: 20)),
                                Container(
                                  margin: EdgeInsets.symmetric(
                                      vertical: 5, horizontal: 5),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.white),
                                  child: Text.rich(
                                    TextSpan(
                                        text: 'Perhatikan animasi di atas ',
                                        children: [
                                          TextSpan(
                                              text:
                                                  'untuk mengetahui panjang garis singgung persekutuan luar dua lingkaran. Dapat dilihat saat animasi berhenti, terbentuk segitiga siku-siku dengan '),
                                          TextSpan(
                                            text:
                                                'Panjang sisi tegak merupakan Panjang Garis Singgung dalam dua lingkaran,',
                                            style: TextStyle(
                                                color: Colors.red,
                                                fontWeight: FontWeight.w500),
                                          ),
                                          TextSpan(
                                              text:
                                                  ' Panjang alas segitiga siku-siku adalah Jumlah Kedua jari-jari lingkaran,',
                                              style: TextStyle(
                                                  color: Colors.blue,
                                                  fontWeight: FontWeight.w500)),
                                          TextSpan(
                                            text: ' dan ',
                                          ),
                                          TextSpan(
                                              text:
                                                  'Panjang sisi miring merupakan jarak antar kedua pusat lingkaran.',
                                              style: TextStyle(
                                                  color: Colors.green,
                                                  fontWeight: FontWeight.w500))
                                        ]),
                                    textAlign: TextAlign.justify,
                                  ),
                                ),
                                Text('Rumus: ', style: TextStyle(fontSize: 20)),
                                SizedBox(height: 10),
                                //Rumus d
                                Center(
                                  child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Colors.red),
                                      margin: EdgeInsets.symmetric(
                                          horizontal: 50.0),
                                      child: GestureDetector(
                                          onTap: () {
                                            showDialog(
                                                context: (context),
                                                builder: (context) {
                                                  return AlertDialog(
                                                    shape: RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius.all(
                                                                Radius.circular(
                                                                    10.0))),
                                                    title: Text(
                                                      'Keterangan.',
                                                      style: TextStyle(
                                                          fontSize: 20,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                    content: Text(
                                                        'Rumus ini merupakan rumus yang digunakan untuk mengetahui Panjang garis singgung Luar antar dua lingkaran',
                                                        textAlign:
                                                            TextAlign.center),
                                                    actions: [
                                                      ButtonBar(
                                                        alignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          ElevatedButton(
                                                              onPressed: () {
                                                                Navigator.pop(
                                                                    context);
                                                              },
                                                              child:
                                                                  Text('Oke')),
                                                        ],
                                                      )
                                                    ],
                                                  );
                                                });
                                          },
                                          child: Image.asset(
                                              'Assets/DRumus_d.png'))),
                                ),
                                SizedBox(height: 10),
                                //Rumus R-r
                                Center(
                                  child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Colors.blue),
                                      margin: EdgeInsets.symmetric(
                                          horizontal: 50.0),
                                      child: GestureDetector(
                                          onTap: () {
                                            showDialog(
                                                context: (context),
                                                builder: (context) {
                                                  return AlertDialog(
                                                    shape: RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius.all(
                                                                Radius.circular(
                                                                    10.0))),
                                                    title: Text(
                                                      'Keterangan.',
                                                      style: TextStyle(
                                                          fontSize: 20,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                    content: Text(
                                                      'Rumus ini merupakan rumus yang digunakan untuk mengetahui salah satu jari-jari apabila jari-jari lainnya diketahui.',
                                                      textAlign:
                                                          TextAlign.center,
                                                    ),
                                                    actions: [
                                                      ButtonBar(
                                                        alignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          ElevatedButton(
                                                              onPressed: () {
                                                                Navigator.pop(
                                                                    context);
                                                              },
                                                              child:
                                                                  Text('Oke')),
                                                        ],
                                                      )
                                                    ],
                                                  );
                                                });
                                          },
                                          child: Image.asset(
                                              'Assets/DRumus_Rr.png'))),
                                ),
                                SizedBox(height: 10),
                                //Rumus P
                                Center(
                                  child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Colors.green),
                                      margin: EdgeInsets.symmetric(
                                          horizontal: 50.0),
                                      child: GestureDetector(
                                          onTap: () {
                                            showDialog(
                                              context: (context),
                                              builder: (context) {
                                                return AlertDialog(
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.all(
                                                              Radius.circular(
                                                                  10.0))),
                                                  title: Text(
                                                    'Keterangan.',
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  content: Text(
                                                      'Rumus ini merupakan rumus yang digunakan untuk mengetahui jarak antar kedua pusat lingkaran.',
                                                      textAlign:
                                                          TextAlign.center),
                                                  actions: [
                                                    ButtonBar(
                                                      alignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        ElevatedButton(
                                                            onPressed: () {
                                                              Navigator.pop(
                                                                  context);
                                                            },
                                                            child: Text('Oke')),
                                                      ],
                                                    )
                                                  ],
                                                );
                                              },
                                            );
                                          },
                                          child: Image.asset(
                                              'Assets/DRumus_P.png'))),
                                ),
                              ],
                            ),
                          ))
                    ],
                  )),
            ),
            //Melukis Garis Singgung Persekutuan Dalam
            Center(
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.cyan),
                child: MelukisDalam(),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}

class MelukisDalam extends StatelessWidget {
  const MelukisDalam({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF424874),
        body: Container(
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding:
                      EdgeInsets.only(top: 20, right: 30, left: 10, bottom: 50),
                  child: Text(
                    'Melukis Garis Singgung Persekutuan Dalam',
                    style: GoogleFonts.oswald(
                    textStyle: TextStyle(color: Colors.white, fontSize: 25,)
                  ) 
                  ),
                ),
              ),
              Padding(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: Container(
                    height: 300,
                    width: 500,
                    child: ChewieListItem(
                      looping: true,
                      videoPlayerController: VideoPlayerController.asset(
                          'Assets/Melukis_Dalam.mp4'),
                    ),
                  )),
            ],
          ),
        ));
  }
}
