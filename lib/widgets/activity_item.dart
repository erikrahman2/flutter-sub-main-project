import 'package:flutter/material.dart';

class ActivityItem extends StatelessWidget {
  final String title;
  final String description;
  final IconData icon;
  final String time;

  const ActivityItem({
    super.key,
    required this.title,
    required this.description,
    required this.icon,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      margin: const EdgeInsets.symmetric(vertical: 6),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Color(0xFF93B7BE),
          child: Icon(icon, color: Color(0xFF2D3047)),
        ),
        title: Text(
          title,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(description),
        trailing: Text(
          time,
          style: TextStyle(color: Colors.grey),
        ),
      ),
    );
  }
}
