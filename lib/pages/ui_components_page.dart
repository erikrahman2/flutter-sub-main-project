import 'package:flutter/material.dart';

class UIComponentsPage extends StatelessWidget {
  const UIComponentsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('UI Components'),
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          Text(
            'Buttons',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {},
            child: Text('Elevated Button'),
          ),
          TextButton(
            onPressed: () {},
            child: Text('Text Button'),
          ),
          OutlinedButton(
            onPressed: () {},
            child: Text('Outlined Button'),
          ),
          SizedBox(height: 20),
          Text(
            'Switch & Slider',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          SwitchListTile(
            title: Text('Enable Notifications'),
            value: true,
            onChanged: (_) {},
          ),
          Slider(
            value: 50,
            onChanged: (_) {},
            min: 0,
            max: 100,
          ),
        ],
      ),
    );
  }
}
