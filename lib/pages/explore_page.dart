import 'package:flutter/material.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> courses = [
      {
        'icon': Icons.smartphone,
        'title': 'Mobile Programming Lanjutan',
        'subtitle': 'Belajar Flutter dan pengembangan aplikasi.',
        'status': 'on going',
      },
      {
        'icon': Icons.design_services_outlined,
        'title': 'UI/UX Design',
        'subtitle': 'Fokus pada user interface & user experience.',
        'status': 'on going',
      },
      {
        'icon': Icons.bubble_chart_outlined,
        'title': 'Blockchain Basics',
        'subtitle': 'Pengenalan smart contract dan Web3.',
        'status': 'on going',
      },
      {
        'icon': Icons.key,
        'title': 'criptography',
        'subtitle': 'Manipulasi privat key dari kriptografi.',
        'status': 'finished',
      },
      {
        'icon': Icons.data_thresholding_rounded,
        'title': 'Data science',
        'subtitle': 'mengelola dan memanipulasi data',
        'status': 'finished',
      },
      {
        'icon': Icons.psychology_alt_outlined,
        'title': 'Artificial intellijence',
        'subtitle': 'machine learning dan deep learning.',
        'status': 'finished',
      },
      {
        'icon': Icons.settings_input_component_rounded,
        'title': 'Pemrograman Saintifik',
        'subtitle': 'Dasar-dasar python.',
        'status': 'finished',
      },
      {
        'icon': Icons.web,
        'title': 'Web Development',
        'subtitle': 'HTML, CSS, dan dasar JavaScript.',
        'status': 'finished',
      },
      {
        'icon': Icons.add_circle_outline,
        'title': 'Teknik Komputasi',
        'subtitle': 'Pemecahan masalah matematika komputasi.',
        'status': 'finished',
      },
      {
        'icon': Icons.sign_language_outlined,
        'title': 'Bahasa Inggris Informatika',
        'subtitle':
            'Bahasa Inggris dalam ruang lingkup sistematis informatika.',
        'status': 'finished',
      },
      {
        'icon': Icons.emoji_objects_outlined,
        'title': 'Object-Oriented Programming',
        'subtitle': 'Konsep OOP di Java.',
        'status': 'finished',
      },
      {
        'icon': Icons.cloud_sharp,
        'title': 'Cloud Computing',
        'subtitle': 'mengakses sumber daya komputasi melalui internet.',
        'status': 'on going',
      },
      {
        'icon': Icons.exposure_zero,
        'title': 'Sistem Digital',
        'subtitle': 'Mengolah informasi menggunakan bilangan biner.',
        'status': 'finished',
      },
      {
        'icon': Icons.numbers,
        'title': 'Matematika Disktrit',
        'subtitle':
            'mempelajari objek yang tidak saling berhubungan atau diskrit.',
        'status': 'finished',
      },
      {
        'icon': Icons.network_check,
        'title': 'Networking Fundamentals',
        'subtitle': 'Dasar-dasar jaringan komputer.',
        'status': 'finished',
      },
      {
        'icon': Icons.arrow_back_ios_new_outlined,
        'title': 'Algoritma Pemrograman',
        'subtitle': 'Struktur dasar algoritma.',
        'status': 'finished',
      },
      {
        'icon': Icons.computer,
        'title': 'Machine Learning',
        'subtitle':
            'Pengembangan Algoritma dalam menganalisis data, dan membuat keputusan.',
        'status': 'on going',
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Subject',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color(0xFF2D3047),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: courses.length + 1,
        itemBuilder: (context, index) {
          if (index == 0) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Courses I Have Taken',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const SizedBox(height: 20),
              ],
            );
          }

          final course = courses[index - 1];
          return Padding(
            padding: const EdgeInsets.only(bottom: 12),
            child: CourseCard(
              icon: course['icon'],
              title: course['title'],
              subtitle: course['subtitle'],
              status: course['status'],
            ),
          );
        },
      ),
    );
  }
}

class CourseCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final String status;

  const CourseCard({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.status,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Color(0xFFFFD5C2),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundColor: Color(0xFFF28F3B),
            child: Icon(icon, color: Colors.white),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 16)),
                const SizedBox(height: 4),
                Text(subtitle, style: TextStyle(color: Colors.grey.shade800)),
              ],
            ),
          ),
          Text(status, style: TextStyle(color: Colors.grey.shade600)),
        ],
      ),
    );
  }
}
