// Tampilan untuk halaman memilih opsi pengaturan ulang password (email).

import 'package:flutter/material.dart';
import 'package:nakama_laundry/auth/forgot_password/forgot_password_input_page.dart';

class ForgotPasswordSelectionPage extends StatelessWidget {
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
            Text(
              'Lupa Kata Sandi',
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            // Deskripsi
            Text(
              'Pilih metode untuk memulihkan kata sandi Anda:',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20), // Jarak antar elemen

            // Pilihan Pemulihan - Email
            GestureDetector(
              onTap: () {
                // Navigasi ke halaman input email
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ForgotPasswordInputPage()));
              },
              child: Container(
                padding: EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey.shade300),
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.1),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    Icon(Icons.email, color: Color(0xFF20B7E7), size: 28),
                    SizedBox(width: 10),
                    Text(
                      'Melalui Email',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20), // Jarak antar pilihan

            // Pilihan Pemulihan Tambahan (bisa ditambahkan)
            GestureDetector(
              onTap: () {
                // Tambahkan metode pemulihan lain jika diperlukan
              },
              child: Container(
                padding: EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey.shade300),
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.1),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    Icon(Icons.phone, color: Colors.grey, size: 28),
                    SizedBox(width: 10),
                    Text(
                      'Metode Lain (Opsional)',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
