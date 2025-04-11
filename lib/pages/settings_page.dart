import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool _darkMode = false;
  bool _notifications = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
        backgroundColor: Color(0xFF2D3047),
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          SwitchListTile(
            title: Text('Dark Mode'),
            subtitle: Text('Enable dark theme for the app'),
            value: _darkMode,
            onChanged: (value) {
              setState(() {
                _darkMode = value;
              });
              // bisa tambahin ThemeMode handler di sini
            },
          ),
          SwitchListTile(
            title: Text('Notifications'),
            subtitle: Text('Receive app notifications'),
            value: _notifications,
            onChanged: (value) {
              setState(() {
                _notifications = value;
              });
              // bisa sambungkan ke notifikasi setting di sini
            },
          ),
          ListTile(
            title: Text('Language'),
            subtitle: Text('Select your preferred language'),
            trailing: Icon(Icons.arrow_forward_ios, size: 16),
            onTap: () {
              // bisa buka bottom sheet atau dialog
            },
          ),
          ListTile(
            title: Text('Privacy Policy'),
            trailing: Icon(Icons.arrow_forward_ios, size: 16),
            onTap: () {
              // buka halaman kebijakan
            },
          ),
          ListTile(
            title: Text('Terms of Service'),
            trailing: Icon(Icons.arrow_forward_ios, size: 16),
            onTap: () {
              // buka halaman ketentuan
            },
          ),
        ],
      ),
    );
  }
}
