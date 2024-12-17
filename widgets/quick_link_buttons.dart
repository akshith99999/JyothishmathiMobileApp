import 'package:flutter/material.dart';

class QuickLinkButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8.0,
      runSpacing: 8.0,
      children: [
        _buildQuickLinkButton(context, Icons.school, 'Academics', '/academics'),
        _buildQuickLinkButton(context, Icons.account_balance, 'Facilities', '/facilities'),
        _buildQuickLinkButton(context, Icons.event, 'News & Events', '/news_events'),
        _buildQuickLinkButton(context, Icons.work, 'Placements', '/placements'),
      ],
    );
  }

  Widget _buildQuickLinkButton(BuildContext context, IconData icon, String label, String route) {
    return ElevatedButton.icon(
      onPressed: () {
        Navigator.pushNamed(context, route);
      },
      icon: Icon(icon, size: 24.0),
      label: Text(label),
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.blue, // Changed from primary to backgroundColor
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      ),
    );
  }
}
