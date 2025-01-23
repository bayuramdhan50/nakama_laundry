// Tampilan untuk input email.

import 'package:flutter/material.dart';
import 'package:nakama_laundry/auth/forgot_password/forgot_password_otp_verification_page.dart';

class ForgotPasswordInputPage extends StatelessWidget {
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Masukkan Email Anda',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                )),
            // Deskripsi
            Text(
              'Masukkan email Anda yang terdaftar. Kami akan mengirimkan tautan untuk mengatur ulang kata sandi Anda.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20), // Jarak antar elemen

            // Input Email
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                prefixIcon: Icon(Icons.email),
              ),
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(height: 50),

            Center(
              child: Text(
                'kode akan dikirim ke email\ndalam 5 menit',
                style: TextStyle(color: Colors.black, fontSize: 16),
                textAlign: TextAlign.center,
              ),
            ), // Jarak sebelum tombol
            SizedBox(height: 30),
            // Tombol Kirim
            SizedBox(
              width: double.infinity, // Tombol penuh horizontal
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              ForgotPasswordOtpVerificationPage(
                                email: "bayu@gmail.com",
                              )));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF20B7E7),
                  padding: EdgeInsets.symmetric(vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                child: Text(
                  'Verifikasi Kode',
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
