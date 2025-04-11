import 'package:flutter/material.dart';

class HelpPage extends StatelessWidget {
  const HelpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Help & Support'),
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          Text(
            'Frequently Asked Questions',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
          _buildQuestion(
            question: 'Bagaimana cara menggunakan fitur pencarian?',
            answer:
                'Ketuk ikon pencarian di pojok kanan atas halaman Home, lalu masukkan kata kunci yang ingin dicari.',
          ),
          _buildQuestion(
            question: 'Di mana saya bisa menemukan informasi profil saya?',
            answer: 'Ketuk tab Profile di bagian bawah navigasi utama.',
          ),
          _buildQuestion(
            question: 'Bagaimana cara mengirimkan feedback?',
            answer:
                'Tekan tombol feedback (ikon 💬) di halaman Home untuk membuka form feedback.',
          ),
          SizedBox(height: 30),
          Text(
            'Butuh bantuan lebih lanjut?',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          ),
          SizedBox(height: 10),
          Text(
            'Hubungi kami melalui email di support@elegantnav.app',
            style: TextStyle(color: Colors.indigo),
          ),
        ],
      ),
    );
  }

  Widget _buildQuestion({required String question, required String answer}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          question,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 5),
        Text(answer),
        SizedBox(height: 20),
      ],
    );
  }
}
