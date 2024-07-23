import 'package:flutter/material.dart';
import 'chat_page.dart'; // Import halaman chat yang sudah dibuat

class HistoryChatPage extends StatelessWidget {
  final List<Map<String, String>> chatHistory = [
    {
      'name': 'Paiman',
      'service': 'Servis AC',
      'date': '16/6/2024',
      'imagePath': 'assets/img/paiman.png',
    },
    {
      'name': 'Darsa',
      'service': 'Servis AC',
      'date': '16/6/2024',
      'imagePath': 'assets/img/darsa.png',
    },
    {
      'name': 'Poniman',
      'service': 'Servis AC',
      'date': '16/6/2024',
      'imagePath': 'assets/img/Poniman.png',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Riwayat Chat Tukang '),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: ListView.builder(
        itemCount: chatHistory.length,
        itemBuilder: (context, index) {
          final chat = chatHistory[index];
          return Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage(chat['imagePath']!),
              ),
              title: Text(chat['name']!),
              subtitle: Text(chat['service']!),
              trailing: Text(chat['date']!),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ChatPage(
                      name: chat['name']!,
                      service: chat['service']!,
                      imagePath: chat['imagePath']!,
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
