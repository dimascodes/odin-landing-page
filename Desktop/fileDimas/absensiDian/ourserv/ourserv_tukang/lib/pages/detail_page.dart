import 'package:flutter/material.dart';
import 'chat_page.dart';

class DetailPage extends StatelessWidget {
  final String name;
  final String address;
  final String service;
  final String experience;
  final String imagePath;

  DetailPage({
    required this.name,
    required this.address,
    required this.service,
    required this.experience,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: <Widget>[
                Row(
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
                          Text(service, style: TextStyle(fontSize: 14)),
                          SizedBox(height: 4.0),
                          Text(experience, style: TextStyle(fontSize: 14)),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.star, color: Colors.yellow),
                    SizedBox(width: 4.0),
                    Text('5.0'),
                  ],
                ),
                SizedBox(height: 16.0),
                ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ChatPage(
                          name: name,
                          service: service,
                          imagePath: imagePath,
                        ),
                      ),
                    );
                  },
                  icon: Icon(Icons.chat),
                  label: Text('Chat Now'),
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white, backgroundColor: Colors.teal, // Text color
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
