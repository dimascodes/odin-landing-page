import 'package:flutter/material.dart';
import 'detail_page.dart';

class RekomendasiACPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rekomendasi Servis AC'),
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
          _buildRekomendasiCard(
            context,
            'Paiman',
            'Ds. Kedawung, Pejagoan, Kebumen',
            '13 tahun bekerja dibidang tersebut',
            'assets/img/paiman.png'
          ),
          _buildRekomendasiCard(
            context,
            'Darsa',
            'Ds. Kuwayuhan, Pejagoan, Kebumen',
            '10 tahun bekerja dibidang tersebut',
            'assets/img/darsa.png'
          ),
          _buildRekomendasiCard(
            context,
            'Poniman',
            'Ds. Watulawang, Pejagoan, Kebumen',
            '6 tahun bekerja dibidang tersebut',
            'assets/img/Poniman.png'
          ),
        ],
      ),
    );
  }

  Widget _buildRekomendasiCard(BuildContext context, String name, String address, String experience, String imagePath) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailPage(
              name: name,
              address: address,
              service: 'Servis AC',
              experience: experience,
              imagePath: imagePath,
            ),
          ),
        );
      },
      child: Card(
        margin: EdgeInsets.only(bottom: 16.0),
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Row(
            children: <Widget>[
              CircleAvatar(
                backgroundImage: AssetImage(imagePath),
                radius: 30.0,
              ),
              SizedBox(width: 16.0),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(name, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    SizedBox(height: 4.0),
                    Text(address, style: TextStyle(fontSize: 14)),
                    SizedBox(height: 4.0),
                    Text('Servis AC', style: TextStyle(fontSize: 14)),
                    SizedBox(height: 4.0),
                    Text(experience, style: TextStyle(fontSize: 14)),
                  ],
                ),
              ),
              Icon(Icons.star, color: Colors.yellow),
              Text('5.0'),
            ],
          ),
        ),
      ),
    );
  }
}
