import 'package:flutter/material.dart';
import '../widgets/feature_card.dart';
import '../widgets/section_title.dart';
import '../widgets/activity_item.dart';
import '../widgets/quick_action_button.dart';
import '../widgets/app_drawer.dart';
import '../widgets/feedback_form.dart';
import '../utils/app_search_delegate.dart';
import 'profile_page.dart';
import 'settings_page.dart';
import 'help_page.dart';
import 'about_page.dart';
import 'tab_navigation.dart';
import 'animations_page.dart';
import 'ui_components_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<FeatureCard> _features = [
    FeatureCard(
      title: 'My Track',
      description: 'Explore different views with tab navigation',
      icon: Icons.tab,
      color: Color(0xFF2D3047),
      route: TabNavigation(),
    ),
    FeatureCard(
      title: 'Animations',
      description: 'Learn about beautiful animations',
      icon: Icons.animation,
      color: Color(0xFFC8553D),
      route: AnimationsPage(),
    ),
    FeatureCard(
      title: 'UI Components',
      description: 'Explore elegant UI components',
      icon: Icons.widgets,
      color: Color(0xFFF28F3B),
      route: UIComponentsPage(),
    ),
    FeatureCard(
      title: 'About',
      description: 'Learn more about this app',
      icon: Icons.info,
      color: Color(0xFF588B8B),
      route: AboutPage(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Winerik'),
        elevation: 0,
        actions: [
          IconButton(
            icon: Icon(
              Icons.search,
              color: Color(0xFF93B7BE),
            ),
            onPressed: () {
              showSearch(
                context: context,
                delegate:
                    AppSearchDelegate(data: ['Item 1', 'Item 2', 'Item 3']),
              );
            },
          ),
          IconButton(
            icon: Icon(Icons.info_outline),
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => AboutPage()),
            ),
          ),
        ],
      ),
      drawer: AppDrawer(),
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Color(0xFF2D3047),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome to myAPP',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'This application contains features from the materials I have learned in the advanced mobile programming class.',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white70,
                  ),
                ),
                Text(
                  'Feel free to explore as you like',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white70,
                  ),
                ),
                SizedBox(height: 20),
                GestureDetector(
                  onTap: () {
                    showSearch(
                      context: context,
                      delegate: AppSearchDelegate(
                          data: ['Item 1', 'Item 2', 'Item 3']),
                    );
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.search, color: Colors.grey),
                        SizedBox(width: 8),
                        Text(
                          'Search features...',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SectionTitle(title: 'Featured'),
                SizedBox(height: 10),
                SizedBox(
                  height: 200,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: _features.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.only(right: 16),
                        child: FeatureCardWidget(feature: _features[index]),
                      );
                    },
                  ),
                ),
                SizedBox(height: 20),
                SectionTitle(title: 'Recent Activities'),
                SizedBox(height: 10),
                ActivityItem(
                  title: 'Profile Updated',
                  description: 'Your profile information was updated',
                  icon: Icons.person,
                  time: '2h ago',
                ),
                ActivityItem(
                  title: 'New Features Available',
                  description: 'Check out our latest features and improvements',
                  icon: Icons.new_releases,
                  time: '1d ago',
                ),
                ActivityItem(
                  title: 'Settings Changed',
                  description: 'Your app settings were modified',
                  icon: Icons.settings,
                  time: '3d ago',
                ),
                SizedBox(height: 20),
                SectionTitle(title: 'Quick Actions'),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    QuickActionButton(
                      icon: Icons.person,
                      label: 'Profile',
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => ProfilePage()),
                      ),
                    ),
                    QuickActionButton(
                      icon: Icons.settings,
                      label: 'Settings',
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => SettingsPage()),
                      ),
                    ),
                    QuickActionButton(
                      icon: Icons.help_outline,
                      label: 'Help',
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => HelpPage()),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
            ),
            builder: (context) => FeedbackForm(),
          );
        },
        backgroundColor: Color(0xFF2D3047),
        child: Icon(Icons.feedback, color: Color(0xFF93B7BE)),
      ),
    );
  }
}
