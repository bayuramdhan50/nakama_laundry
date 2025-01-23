import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          // Header
          Container(
            padding: EdgeInsets.only(top: 40, left: 20, right: 20, bottom: 20),
            width: double.infinity,
            color: Color(0xFF20B7E7),
            child: Row(
              children: [
                // Arrow Left
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context); // Kembali ke halaman sebelumnya
                  },
                  child: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                  ),
                ),
                SizedBox(width: 10),
                // Header Text
              ],
            ),
          ),

          // Form Input
          Expanded(
            child: SingleChildScrollView(
              padding: EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start, // Teks rata kiri
                children: [
                  // Teks "Identitas Pengguna"
                  Text(
                    'Identitas Pengguna',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20), // Jarak antara teks dan input pertama

                  // Nama
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Nama',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      prefixIcon: Icon(Icons.person),
                    ),
                  ),
                  SizedBox(height: 20),

                  // Email
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Email',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      prefixIcon: Icon(Icons.email),
                    ),
                  ),
                  SizedBox(height: 20),

                  // Nomor Telepon
                  TextFormField(
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      labelText: 'Nomor Telepon',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      prefixIcon: Icon(Icons.phone),
                    ),
                  ),
                  SizedBox(height: 20),

                  // Password
                  TextFormField(
                    obscureText: obscureText,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      prefixIcon: Icon(Icons.lock),
                      suffixIcon: IconButton(
                        icon: Icon(
                          obscureText ? Icons.visibility : Icons.visibility_off,
                        ),
                        onPressed: () {
                          setState(() {
                            obscureText = !obscureText;
                          });
                        },
                      ),
                    ),
                  ),
                  SizedBox(height: 20),

                  // Konfirmasi Password
                  TextFormField(
                    obscureText: obscureText,
                    decoration: InputDecoration(
                      labelText: 'Konfirmasi Password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      prefixIcon: Icon(Icons.lock),
                      suffixIcon: IconButton(
                        icon: Icon(
                          obscureText ? Icons.visibility : Icons.visibility_off,
                        ),
                        onPressed: () {
                          setState(() {
                            obscureText = !obscureText;
                          });
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),

      // Footer dengan Tombol Register
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(20.0),
        color: Colors.white,
        child: ElevatedButton(
          onPressed: () {
            // Logika untuk proses registrasi
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Color(0xFF20B7E7),
            minimumSize: Size(double.infinity, 50), // Tombol penuh horizontal
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
          child: Text(
            'Register',
            style: TextStyle(fontSize: 16, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
