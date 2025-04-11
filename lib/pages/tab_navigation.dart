import 'package:flutter/material.dart';

class TabNavigation extends StatelessWidget {
  const TabNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('My Track'),
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.book_rounded), text: 'Portofolio'),
              Tab(
                  icon: Icon(Icons.stacked_line_chart_outlined),
                  text: 'Project'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(child: Text('Portofolio Content')),
            Center(child: Text('Project Content')),
          ],
        ),
      ),
    );
  }
}
