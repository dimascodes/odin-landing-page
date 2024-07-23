import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _fullNameController = TextEditingController();
  String _selectedRole = 'User';

  void _signup() async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: _emailController.text.trim(),
        password: _passwordController.text.trim(),
      );

      await FirebaseFirestore.instance.collection('users').doc(userCredential.user?.uid).set({
        'name': _nameController.text.trim(),
        'fullName': _fullNameController.text.trim(),
        'email': _emailController.text.trim(),
        'role': _selectedRole,
      });

      // Navigate to the dashboard
    } catch (e) {
      // Handle error
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/img/Ourservlogo.png', height: 100), // Your logo here
            SizedBox(height: 20),
            TextField(
              controller: _nameController,
              decoration: InputDecoration(
                hintText: 'Masukan nama anda',
              ),
            ),
            SizedBox(height: 10),
            TextField(
              controller: _fullNameController,
              decoration: InputDecoration(
                hintText: 'Masukan nama lengkap',
              ),
            ),
            SizedBox(height: 10),
            TextField(
              controller: _emailController,
              decoration: InputDecoration(
                hintText: 'Masukan email anda',
              ),
            ),
            SizedBox(height: 10),
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(
                hintText: 'Masukan kata sandi',
              ),
              obscureText: true,
            ),
            SizedBox(height: 10),
            DropdownButton<String>(
              value: _selectedRole,
              items: <String>['User', 'Tukang']
                  .map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  _selectedRole = newValue!;
                });
              },
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _signup,
              child: Text('Sign Up'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.teal, // Background color
              ),
            ),
          ],
        ),
      ),
    );
  }
}
