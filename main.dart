import 'package:flutter/material.dart';

void main() {
  runApp(ProfileApp());
}

class ProfileApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Profile',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Profile'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('../images/laeli.jpg'),
            ),
            SizedBox(height: 20),
            Text(
              'LAELI NUR ROHMAH',
              style: TextStyle(fontFamily: 'Algerian', fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'Saya seorang mahasiswi jurusan Teknik Informatika di STMIK Widya Utama, saat ini saya berstatus mahasiswi semester 5',
              style: TextStyle(fontSize: 18, fontStyle: FontStyle.italic),
            ),
            SizedBox(height: 20),
            Card(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: ListTile(
                leading: Icon(Icons.house),
                title: Text('Wangon, Banyumas, Jawa Tengah'),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: ListTile(
                leading: Icon(Icons.email),
                title: Text('laelinr17@gmail.com'),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: ListTile(
                leading: Icon(Icons.phone),
                title: Text('+6289512062420'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}