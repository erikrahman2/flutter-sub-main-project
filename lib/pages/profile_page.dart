import 'package:flutter/material.dart';
import '../pages/settings_page.dart';
import '../pages/help_page.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Subject',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color(0xFF2D3047),
      ),
      body: ListView(
        padding: EdgeInsets.all(24),
        children: [
          Center(
            child: CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/image/picprofile.jpeg'),
              backgroundColor: Colors.transparent,
            ),
          ),
          SizedBox(height: 20),
          Center(
            child: Text(
              'Erik Rahman',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ),
          Center(
            child: Text(
              'erikrahman@gmail.com',
              style: TextStyle(color: Colors.grey),
            ),
          ),
          SizedBox(height: 30),
          Text(
            'Tentang Saya',
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color(0xFF2D3047)),
          ),
          SizedBox(height: 10),
          Text(
            'Halo! Saya Erik Rahman, seorang mahasiswa yang sedang mendalami pengembangan aplikasi mobile dan web. Saat ini saya belajar di kelas Mobile Programming Lanjutan. Saya memiliki ketertarikan dalam dunia teknologi, desain antarmuka, dan eksplorasi fitur-fitur modern dalam pengembangan aplikasi.',
            style: TextStyle(fontSize: 16, color: Colors.black87),
          ),
          SizedBox(height: 20),
          Text(
            'Pendidikan',
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color(0xFF2D3047)),
          ),
          SizedBox(height: 10),
          Text(
            '''• SMA X kota Y
• Universitas B kota A
• Partisipasi dalam pembelajaran Subject C di PT D''',
            style: TextStyle(fontSize: 16, color: Colors.black87),
          ),
          SizedBox(height: 30),
          ListTile(
            leading: Icon(Icons.settings, color: Color(0xFF93B7BE)),
            title: Text('Settings'),
            trailing: Icon(Icons.arrow_forward_ios, size: 16),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => SettingsPage()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.help_outline, color: Color(0xFF93B7BE)),
            title: Text('Help & Support'),
            trailing: Icon(Icons.arrow_forward_ios, size: 16),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => HelpPage()),
              );
            },
          ),
          ListTile(
            leading:
                Icon(Icons.logout, color: const Color.fromARGB(255, 197, 0, 0)),
            title: Text('Logout'),
            trailing: Icon(Icons.arrow_forward_ios, size: 16),
            onTap: () {
              showDialog(
                context: context,
                builder: (_) => AlertDialog(
                  title: Text('Confirm Logout'),
                  content: Text('Are you sure you want to log out?'),
                  actions: [
                    TextButton(
                      onPressed: () => Navigator.pop(context),
                      child: Text('Cancel'),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                        // implement logout logic here
                      },
                      child: Text('Logout'),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
