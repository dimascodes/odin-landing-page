import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  final String name;
  final String service;
  final String imagePath;

  ChatPage({
    required this.name,
    required this.service,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.close),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Row(
          children: <Widget>[
            CircleAvatar(
              backgroundImage: AssetImage(imagePath),
              radius: 20.0,
            ),
            SizedBox(width: 10.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(name, style: TextStyle(fontSize: 18)),
                Text(service, style: TextStyle(fontSize: 14)),
              ],
            ),
          ],
        ),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView(
              padding: EdgeInsets.all(16.0),
              children: <Widget>[
                _buildChatBubble("Selamat siang pak, apakah saya bisa bertanya-tanya terlebih dahulu tentang kerusakan barang saya ?", true),
                _buildChatBubble("Boleh kak, silahkan....", false),
              ],
            ),
          ),
          _buildMessageInput(),
        ],
      ),
    );
  }

  Widget _buildChatBubble(String message, bool isSentByMe) {
    return Align(
      alignment: isSentByMe ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        margin: EdgeInsets.only(bottom: 10.0),
        padding: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: isSentByMe ? Colors.teal[100] : Colors.white,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Text(
          message,
          style: TextStyle(fontSize: 14),
        ),
      ),
    );
  }

  Widget _buildMessageInput() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: "Ketik pesan",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                contentPadding: EdgeInsets.symmetric(horizontal: 20.0),
              ),
            ),
          ),
          SizedBox(width: 10.0),
          IconButton(
            icon: Icon(Icons.send, color: Colors.teal),
            onPressed: () {
              // Tambahkan fungsi untuk mengirim pesan
            },
          ),
        ],
      ),
    );
  }
}
