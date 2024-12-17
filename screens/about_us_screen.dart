import 'package:flutter/material.dart';
import 'package:jits/screens/about_us_vision_mission_screen.dart';  // Import the renamed Vision & Mission screen

class AboutUsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Us'),
        backgroundColor: Colors.blue,
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('About College'),
            onTap: () {
              // Navigate to About College details
            },
          ),
          ListTile(
            title: Text('Academic Advisory Board'),
            onTap: () {
              // Navigate to Academic Advisory Board details
            },
          ),
          ListTile(
            title: Text('Vision & Mission'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AboutUsVisionMissionScreen(),
                ),
              );
            },
          ),
          ListTile(
            title: Text('Leadership'),
            onTap: () {
              // Navigate to Leadership details
            },
          ),
          ListTile(
            title: Text('Administration'),
            onTap: () {
              // Navigate to Administration details
            },
          ),
          ListTile(
            title: Text('Awards & Honors'),
            onTap: () {
              // Navigate to Awards & Honors details
            },
          ),
          ListTile(
            title: Text('Committees'),
            onTap: () {
              // Navigate to Committees details
            },
          ),
          ListTile(
            title: Text('Service Rules'),
            onTap: () {
              // Navigate to Service Rules details
            },
          ),
        ],
      ),
    );
  }
}
