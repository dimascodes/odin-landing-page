import 'package:flutter/material.dart';
import 'pages/dashboard.dart'; // Pastikan untuk mengimpor halaman dashboard

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DashboardPage(), // Panggil DashboardPage di sini
    );
  }
}
