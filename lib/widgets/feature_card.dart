import 'package:flutter/material.dart';

class FeatureCard {
  final String title;
  final String description;
  final IconData icon;
  final Color color;
  final Widget route;

  FeatureCard({
    required this.title,
    required this.description,
    required this.icon,
    required this.color,
    required this.route,
  });
}

class FeatureCardWidget extends StatelessWidget {
  final FeatureCard feature;

  const FeatureCardWidget({super.key, required this.feature});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(builder: (_) => feature.route),
      ),
      child: Container(
        width: 160,
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: feature.color.withOpacity(0.1),
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: feature.color.withOpacity(0.3)),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundColor: feature.color.withOpacity(0.2),
              child: Icon(feature.icon, color: feature.color),
            ),
            SizedBox(height: 12),
            Text(
              feature.title,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: feature.color,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 8),
            Text(
              feature.description,
              style: TextStyle(
                fontSize: 12,
                color: Colors.black54,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
