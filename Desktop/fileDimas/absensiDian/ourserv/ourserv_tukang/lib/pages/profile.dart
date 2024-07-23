import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pengaturan akun'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/img/Poniman.png'),
            ),
            SizedBox(height: 10),
            TextButton(
              onPressed: () {
                // Tambahkan fungsi ubah avatar
              },
              child: Text('Ubah Avatar'),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 8.0),
              child: Text(
                'Kata sandi Anda paling tidak harus 6 karakter dan harus menyertakan kombinasi angka, huruf, dan karakter khusus (!\$@%).',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey[700]),
              ),
            ),
            SizedBox(height: 20),
            _buildTextField(context, 'Ubah Nama Pengguna'),
            SizedBox(height: 10),
            _buildTextField(context, 'Ubah Kata Sandi', obscureText: true),
            SizedBox(height: 10),
            _buildTextField(context, 'Tulis Ulang Kata Sandi', obscureText: true),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Tambahkan fungsi ubah pengaturan
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.teal, // Warna tombol
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 12),
              ),
              child: Text('Ubah'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTextField(BuildContext context, String hint, {bool obscureText = false}) {
    return TextField(
      obscureText: obscureText,
      decoration: InputDecoration(
        hintText: hint,
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide.none,
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      ),
    );
  }
}
