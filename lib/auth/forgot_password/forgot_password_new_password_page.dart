// Tampilan untuk halaman memasukkan kata sandi baru.

import 'package:flutter/material.dart';
import 'package:nakama_laundry/auth/login/login_page.dart';

class ForgotPasswordNewPasswordPage extends StatefulWidget {
  @override
  _ForgotPasswordNewPasswordPageState createState() =>
      _ForgotPasswordNewPasswordPageState();
}

class _ForgotPasswordNewPasswordPageState
    extends State<ForgotPasswordNewPasswordPage> {
  // Controller untuk input kata sandi
  TextEditingController _newPasswordController = TextEditingController();
  TextEditingController _confirmPasswordController = TextEditingController();
  bool _isNewPasswordObscured =
      true; // Status untuk menyembunyikan kata sandi baru
  bool _isConfirmPasswordObscured =
      true; // Status untuk menyembunyikan konfirmasi kata sandi

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xFF20B7E7),
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.white),
          onPressed: () {
            Navigator.pop(context); // Kembali ke halaman sebelumnya
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Teks Header
            Text(
              'Masukkan Kata Sandi Baru',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 30), // Jarak antar elemen

            // Input Kata Sandi Baru
            TextFormField(
              controller: _newPasswordController,
              obscureText: _isNewPasswordObscured,
              decoration: InputDecoration(
                labelText: 'Kata Sandi Baru',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                prefixIcon: Icon(Icons.lock),
                suffixIcon: IconButton(
                  icon: Icon(
                    _isNewPasswordObscured
                        ? Icons.visibility
                        : Icons.visibility_off,
                  ),
                  onPressed: () {
                    setState(() {
                      _isNewPasswordObscured =
                          !_isNewPasswordObscured; // Toggle status
                    });
                  },
                ),
              ),
            ),
            SizedBox(height: 20),

            // Konfirmasi Kata Sandi Baru
            TextFormField(
              controller: _confirmPasswordController,
              obscureText: _isConfirmPasswordObscured,
              decoration: InputDecoration(
                labelText: 'Konfirmasi Kata Sandi Baru',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                prefixIcon: Icon(Icons.lock),
                suffixIcon: IconButton(
                  icon: Icon(
                    _isConfirmPasswordObscured
                        ? Icons.visibility
                        : Icons.visibility_off,
                  ),
                  onPressed: () {
                    setState(() {
                      _isConfirmPasswordObscured =
                          !_isConfirmPasswordObscured; // Toggle status
                    });
                  },
                ),
              ),
            ),
            SizedBox(height: 40), // Jarak sebelum tombol

            // Tombol Simpan
            SizedBox(
              width: double.infinity, // Tombol penuh horizontal
              child: ElevatedButton(
                onPressed: () {
                  String newPassword = _newPasswordController.text;
                  String confirmPassword = _confirmPasswordController.text;

                  // Cek apakah kata sandi baru dan konfirmasi kata sandi sama
                  if (newPassword == confirmPassword) {
                    // Logika untuk mengubah kata sandi
                    print('Kata sandi berhasil diubah!');
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginPage()));
                  } else {
                    // Tampilkan pesan kesalahan jika tidak sama
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Kata sandi dan konfirmasi tidak cocok!'),
                      ),
                    );
                  }
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF20B7E7),
                  padding: EdgeInsets.symmetric(vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                child: Text(
                  'Simpan',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
