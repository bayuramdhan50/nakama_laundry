// Tampilan untuk halaman verifikasi OTP.

import 'package:flutter/material.dart';
import 'package:nakama_laundry/auth/forgot_password/forgot_password_new_password_page.dart';

class ForgotPasswordOtpVerificationPage extends StatelessWidget {
  final String email; // Email yang dikirim dari halaman sebelumnya

  ForgotPasswordOtpVerificationPage({required this.email});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xFF20B7E7),
        elevation: 0,
        title: Text(
          'Verifikasi OTP',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
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
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Teks Header
            Text(
              'Masukkan Kode',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 10), // Jarak antar elemen

            // Deskripsi
            Text(
              'Kode telah dikirim ke alamat email',
              style: TextStyle(fontSize: 16, color: Colors.black54),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 5),

            // Menampilkan Email
            Text(
              email,
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 30), // Jarak sebelum OTP box

            // OTP Box
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(4, (index) {
                return Container(
                  margin: EdgeInsets.symmetric(horizontal: 8.0),
                  width: 50,
                  height: 50,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black26, width: 1.5),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    maxLength: 1,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      counterText: '', // Menghilangkan hitungan karakter
                    ),
                    onChanged: (value) {
                      if (value.length == 1) {
                        FocusScope.of(context)
                            .nextFocus(); // Pindah ke input berikutnya
                      }
                    },
                  ),
                );
              }),
            ),
            SizedBox(height: 40), // Jarak sebelum tombol

            Center(
              child: Text(
                'kode akan dikirim kembali\ndalam 00:30 detik ',
                style: TextStyle(color: Colors.black, fontSize: 16),
                textAlign: TextAlign.center,
              ),
            ), // Jarak sebelum tombol
            SizedBox(height: 30),

            // Tombol Verifikasi
            SizedBox(
              width: double.infinity, // Tombol penuh horizontal
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              ForgotPasswordNewPasswordPage()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF20B7E7),
                  padding: EdgeInsets.symmetric(vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                child: Text(
                  'Verifikasi',
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
