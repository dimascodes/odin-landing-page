import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AdminDashboard extends StatefulWidget {
  @override
  _AdminDashboardState createState() => _AdminDashboardState();
}

class _AdminDashboardState extends State<AdminDashboard> {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  void _deleteUser(String userId) {
    _firestore.collection('users').doc(userId).delete();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Admin Dashboard'),
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: _firestore.collection('users').snapshots(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return Center(child: CircularProgressIndicator());
          }

          final users = snapshot.data!.docs;

          return ListView.builder(
            itemCount: users.length,
            itemBuilder: (context, index) {
              final user = users[index].data() as Map<String, dynamic>;
              final userId = users[index].id;

              return ListTile(
                title: Text(user['name'] ?? 'No Name'),
                subtitle: Text(user['role'] ?? 'No Role'),
                trailing: IconButton(
                  icon: Icon(Icons.delete),
                  onPressed: () => _deleteUser(userId),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
