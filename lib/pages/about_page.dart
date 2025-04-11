import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About App'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Elegant Navigation App',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'Versi 1.0.0',
              style: TextStyle(color: Colors.grey[700]),
            ),
            SizedBox(height: 20),
            Text(
              'Aplikasi ini dirancang untuk menunjukkan berbagai pola navigasi elegan di Flutter. '
              'Fitur-fitur meliputi bottom navigation, tab navigation, animasi, pencarian, dan komponen UI lainnya.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              'By Erik Rahman and Lumira.',
              style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
            ),
          ],
        ),
      ),
    );
  }
}
