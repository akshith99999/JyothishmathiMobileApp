import 'package:flutter/material.dart';

class ContactUsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact Us'),
        backgroundColor: Colors.blue,
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('Address'),
            subtitle: Text('Jyothishmathi Institute of Technology and Science, Karimnagar, Telangana, India'),
          ),
          ListTile(
            title: Text('Phone'),
            subtitle: Text('+91-12345-67890'),
          ),
          ListTile(
            title: Text('Email'),
            subtitle: Text('info@jyothishmathi.com'),
          ),
        ],
      ),
    );
  }
}
