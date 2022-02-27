import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final double coverHeight = 280;
  final double profilHeight = 144;
  

  final String longText1 =
      ''' Pengembang mengucapkan terima kasih kepada pembimbing 1 ( Drs. I Made Sugiarta, M.Si. ) dan 
  pembimbing 2 ( Prof. Dr. I Made Candiasa, M.I.Komp. ) yang 
  telah membimbing serta memberikan masukan dan saran kepada pengembang untuk mengembangkan aplikasi ini''';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF424874),
        appBar: AppBar(
          title: Text('Profil Pengembang'),
          backgroundColor: Color(0xFF8C9EFF),
        ),
        body: ListView(
          padding: EdgeInsets.zero,
          children: [
            buildTop(),
            buildContent(),
          ],
        ));
  }
}

Widget buildTop() {
  final bottom = 144 / 2;
  final top = 280 - 144 / 2;

  return Stack(
    clipBehavior: Clip.none,
    alignment: Alignment.center,
    children: [
      Container(
        margin: EdgeInsets.only(bottom: bottom),
        child: buildCoverImage(),
      ),
      Positioned(top: top, child: buildProfilImage())
    ],
  );
}

Widget buildContent() => Column(
      children: [
        const SizedBox(
          height: 8,
        ),
        Text(
          'Nyoman Agus Wiryanta',
          style: TextStyle(fontSize: 23, fontWeight: FontWeight.w700, color: Colors.white),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          'NIM : 1713011070',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300,color: Colors.white),
        ),
        const SizedBox( height: 16,),
        Divider(),
        const SizedBox(height: 16,),
        buildAbout()
      ],
    );

Widget buildAbout() => Container(
padding: EdgeInsets.symmetric(horizontal: 48),
child: Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    Text('Tentang                                                      ', style: TextStyle(color: Colors.white, fontSize: 25),
    textAlign: TextAlign.left,),
    const SizedBox(height: 16),
    Text(
      'Media pembelajaran android ini dibuat untuk siswa kelas 8 dengan materi Garis Singgung Lingkaran pada Bab Lingkaran. Aplikasi android ini dibuat dengan Flutter dan diharapkan bisa memudahkan siswa dalam belajar materi Garis Singgung Lingkaran',
      style: TextStyle(fontSize: 15, color: Colors.white), textAlign: TextAlign.justify, 
    ),
    Padding(padding: EdgeInsets.all(8)),
    Text('Ucapan Terima Kasih', textAlign: TextAlign.start, style: TextStyle(fontSize: 25, color: Colors.white),),
    const SizedBox(height: 16,),
    Text(' Pengembang mengucapkan terima kasih kepada pembimbing 1 (Drs. I Made Sugiarta, M.Si.) dan pembimbing 2 (Prof. Dr. I Made Candiasa, M.I.Komp.) yang telah membimbing serta memberikan masukan dan saran kepada pengembang untuk mengembangkan aplikasi ini',
    style: TextStyle(fontSize: 15, color: Colors.white), textAlign: TextAlign.justify),
    SizedBox(height: 30,)

  ],
)
);

Widget buildCoverImage() => Container(
      color: Colors.grey,
      child: Image(
        image: AssetImage('Assets/Background1.jpeg'),
        width: double.infinity,
        height: 280,
        fit: BoxFit.cover,
      ),
    );

Widget buildProfilImage() => CircleAvatar(
      radius: 144 / 2,
      backgroundColor: Colors.grey.shade800,
      backgroundImage: AssetImage('Assets/Profil.jpeg'),
    );
