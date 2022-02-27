import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:math_gsl8/chewie_test.dart';
import 'mainpage_Drawer/setting.dart';
import 'mainpage_Drawer/profil.dart';
import 'materi.dart';
import 'package:video_player/video_player.dart';
import 'package:colours/colours.dart';

class MainPage extends StatelessWidget {
  // ignore: non_constant_identifier_names
  final String Lengkap, Pendek;
  MainPage({
    // ignore: non_constant_identifier_names
    required this.Lengkap,
    // ignore: non_constant_identifier_names
    required this.Pendek,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF424874),
      appBar: AppBar(
        title: Text(
          'Welcome, ' + Pendek,
        ),
        backgroundColor: Color(0xFF8C9EFF),
        actions: [Icon(Icons.account_circle_sharp)],
      ),
      drawer: MyDrawer(
        nama: Lengkap,
        panggil: 'Selamat menggunakan aplikasi ' + Pendek,
      ),
      body: Container(
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding:
                    EdgeInsets.only(top: 20, right: 30, left: 10, bottom: 50),
                child: Text(
                  'Materi : Garis Singgung Lingkaran',
                  style: GoogleFonts.oswald(textStyle: TextStyle(color: Colors.white, fontSize: 20)),
                ),
              ),
            ),
            Container(
              width: 350,
              height: 300,
              child: Center(
                child: Image(
                  image: AssetImage('Assets/hero-img.png'),
                ),
              ),
            ),
            Card(
              color: Colours.thistle,
              elevation: 1,
              child: Container(
                height: 45,
                width: 130,
                child: InkWell(
                  splashColor: Colors.black38,
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MyHomePage()));
                  },
                  child: Text(
                    'MULAI',
                    style: TextStyle(
                      color:Color(0xFF424874),
                      fontSize: 35,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class MyDrawer extends StatefulWidget {
  final String nama, panggil;
  const MyDrawer({Key? key, required this.nama, required this.panggil})
      : super(key: key);

  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: DrawerHeader(
        padding: EdgeInsets.zero,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              color: Color(0xFF424874),
              child: Center(
                child: Column(
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      margin: EdgeInsets.only(top: 30, bottom: 10),
                      child: CircleAvatar(
                        backgroundColor: Color(0xFF8C9EFF),
                        child: Text(
                          'A',
                          style: TextStyle(fontSize: 40, color: Colors.white),
                        ),
                      ),
                    ),
                    Text(
                      "${widget.nama}",
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),
                    Text(
                      "${widget.panggil}",
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    )
                  ],
                ),
              ),
            ),
            ListTile(
                leading: Icon(Icons.settings),
                title: Text('Pengaturan'),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MySetting()));
                }),
            ListTile(
              leading: Icon(Icons.library_add),
              title: Text('Tentang'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Profile()));
              },
            )
          ],
        ),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF424874),
      appBar: AppBar(
        title: Text('Media Pembelajaran Android'),
        backgroundColor: Color(0xFF8C9EFF),
      ),
      body: Container(
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding:
                    EdgeInsets.only(top: 20, right: 30, left: 10, bottom: 50),
                child: Text(
                  'Pengenalan Garis Singgung',
                  style: GoogleFonts.oswald(
                    textStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                    ),
                  ),
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
                    videoPlayerController:
                        VideoPlayerController.asset('Assets/Pengenalan.mp4'),
                  ),
                )),
            Card(
              color: Colours.thistle,
              elevation: 1,
              child: Container(
                child: InkWell(
                  splashColor: Colors.black38,
                  onTap: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => Materi()));
                  },
                  child: Text(
                    'LANJUT MATERI',
                    style: TextStyle(
                      decorationColor: Colors.black38,
                      fontSize: 30,
                      color: Color(0xFF424874),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}
