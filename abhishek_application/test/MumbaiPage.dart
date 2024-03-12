import 'package:flutter/material.dart';

class MumbaiPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mumbai'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 20),
            Image.asset(
              'assets/mumbai.jpg', // Replace 'mumbai_image.jpg' with the actual image file name
              width: 300,
              height: 200,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 20),
            Text(
              'Welcome to Mumbai!',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 10),
            Text(
              'Explore the vibrant city life, visit historical landmarks, and enjoy the local cuisine!',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18),
            ),
            // Add more widgets specific to Mumbai
          ],
        ),
      ),
    );
  }
}