import 'package:flutter/material.dart';
import 'package:splash_screen_view/SplashScreenView.dart';
import 'mainpage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:colours/colours.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget example1 = SplashScreenView(
      navigateRoute: Android(),
      duration: 5000,
      imageSize: 150,
      imageSrc: "Assets/LOGO_GAME.png",
      text: "Matematika",
      textType: TextType.ColorizeAnimationText,
      textStyle: TextStyle(
        fontSize: 40.0,
      ),
      colors: [
        Colours.azure,
        Colours.bisque,
        Colours.burlyWood,
        Colours.crimson
      ],
      backgroundColor:Color(0xFFA6B1E1) ,
    );

    return MaterialApp(
      title: 'Splash screen Demo',
      debugShowCheckedModeBanner:false,
      home: example1,
    );
  }
}

class Android extends StatefulWidget {
  @override
  _AndroidState createState() => _AndroidState();
}

class _AndroidState extends State<Android> {
  GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  TextEditingController _namalengkap = TextEditingController();
  TextEditingController _namaPanggilan = TextEditingController();

  saveData() async {
    final localStorage = await SharedPreferences.getInstance();
    localStorage.setString("namaUser", _namalengkap.text.toString());
    localStorage.setString("panggilUser", _namaPanggilan.text.toString());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: MediaQuery.of(context).size.height,
      padding: const EdgeInsets.all(8),
      color: Color(0xFFA6B1E1),
      child: Form(
        key: _formkey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 100,
              width: 100,
              decoration:
                  BoxDecoration(color: Colors.black87, shape: BoxShape.circle),
              child: Center(
                child: Icon(Icons.person, size: 50, color: Colors.white),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'Selamat datang di Media Pembelajaran Android',
              style: GoogleFonts.lato(textStyle: TextStyle(fontSize: 30)),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: _namalengkap,
              validator: (value) =>
                  (_namalengkap.text.isEmpty) ? 'Mohon diisi kotak ini' : null,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black87)),
                  prefixIcon: Icon(Icons.person),
                  hintText: 'Masukkan Nama Lengkapmu',
                  hintStyle: TextStyle(color: Colors.black26),
                  labelText: 'Nama Lengkap',
                  labelStyle: TextStyle(color: Colors.black26)),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: _namaPanggilan,
              validator: (value) => (_namaPanggilan.text.isEmpty)
                  ? 'Mohon diisi kotak ini'
                  : null,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black87)),
                  prefixIcon: Icon(Icons.person),
                  hintText: 'Masukkan Nama Panggilanmu',
                  hintStyle: TextStyle(color: Colors.black26),
                  labelText: 'Nama Panggilan',
                  labelStyle: TextStyle(color: Colors.black26)),
            ),
            SizedBox(
              height: 20,
            ),
            Card(
                color: Colors.black87,
                elevation: 5,
                child: Container(
                  height: 50,
                  child: InkWell(
                    splashColor: Colors.white60,
                    onTap: () {
                      if (_formkey.currentState!.validate()) {
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context) {
                          return MainPage(
                            Lengkap: _namalengkap.text,
                            Pendek: _namaPanggilan.text,
                          );
                        }));
                      }
                    },
                    child: Center(
                        child: Text(
                      'Login',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    )),
                  ),
                )),
          ],
        ),
      ),
    ));
  }
}
