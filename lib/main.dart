import 'package:flutter/material.dart';
import 'auth/login/login_page.dart'; // Pastikan path ini sesuai dengan struktur folder Anda

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Menghilangkan banner debug
      title: 'Nakama Laundry',
      theme: ThemeData(
        primarySwatch: Colors.blue, // Warna tema aplikasi
      ),
      home: LoginPage(), // Mengarahkan ke Login Page
    );
  }
}
