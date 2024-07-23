import 'package:flutter/material.dart';
import 'package:ourserv_tukang/pages/rekomendasi_kipas.dart';
import 'package:ourserv_tukang/pages/rekomendasi_kulkas.dart';
import 'package:ourserv_tukang/pages/rekomendasi_tv.dart';
import 'rekomendasi_ac.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(height: 50),
          Text(
            'Selamat Datang',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text(
            'OurServ merupakan aplikasi penyedia layanan jasa perbaikan barang elektronik anda',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(height: 20),
          GridView.count(
            shrinkWrap: true,
            crossAxisCount: 2,
            padding: EdgeInsets.all(16.0),
            crossAxisSpacing: 16.0,
            mainAxisSpacing: 16.0,
            children: <Widget>[
              _buildGridItem(context, Icons.ac_unit, 'AC', RekomendasiACPage()),
              _buildGridItem(context, Icons.wind_power, 'Kipas', RekomendasiKipasPage()),  // Tambahkan halaman kipas di sini
              _buildGridItem(context, Icons.tv, 'TV', RekomendasiTVPage()),  // Tambahkan halaman TV di sini
              _buildGridItem(context, Icons.kitchen, 'Kulkas', RekomendasiKulkasPage()),  // Tambahkan halaman kulkas di sini
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildGridItem(BuildContext context, IconData iconData, String title, Widget page) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => page),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.teal.withOpacity(0.1),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(iconData, size: 50, color: Colors.teal),
            SizedBox(height: 10),
            Text(title, style: TextStyle(fontSize: 18, color: Colors.teal)),
          ],
        ),
      ),
    );
  }
}
