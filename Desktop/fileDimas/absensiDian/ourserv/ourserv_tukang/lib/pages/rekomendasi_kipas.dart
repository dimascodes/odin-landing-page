import 'package:flutter/material.dart';

class RekomendasiKipasPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rekomendasi Servis Kipas'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: <Widget>[
          // Tambahkan daftar rekomendasi seperti pada contoh AC
        ],
      ),
    );
  }
}
