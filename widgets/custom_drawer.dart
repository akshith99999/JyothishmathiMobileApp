import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(12.0),
                bottomRight: Radius.circular(12.0),
              ),
            ),
            child: Center(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.white, width: 2.0), // Add white border
                  borderRadius: BorderRadius.circular(8.0), // Add border radius
                ),
                child: Image.asset('lib/assets/images/jits.png', height: 80, fit: BoxFit.contain),
              ),
            ),
          ),
          _buildDrawerItem(context, Icons.home, 'Home', '/home'),
          _buildDrawerItem(context, Icons.info, 'About Us', '/about_us'),
          _buildDrawerItem(context, Icons.book, 'Academics', '/academics'),
          _buildDrawerItem(context, Icons.account_balance, 'Facilities', '/facilities'),
          _buildDrawerItem(context, Icons.event, 'News & Events', '/news_events'),
          _buildDrawerItem(context, Icons.work, 'Placements', '/placements'),
          _buildDrawerItem(context, Icons.person, 'Student Corner', '/student_corner'),
          _buildDrawerItem(context, Icons.report_problem, 'Grievance', '/grievance'),
          _buildDrawerItem(context, Icons.contact_mail, 'Contact Us', '/contact_us'),
          _buildDrawerItem(context, Icons.location_city, 'Campus', '/campus'),
          _buildDrawerItem(context, Icons.school, 'Department', '/department'),
          _buildDrawerItem(context, Icons.person_outline, 'Principal', '/principal'),
        ],
      ),
    );
  }

  Widget _buildDrawerItem(BuildContext context, IconData icon, String title, String route) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      onTap: () {
        Navigator.pushNamed(context, route);
      },
    );
  }
}
