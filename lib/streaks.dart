import 'package:flutter/material.dart';


class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  // Define a variable to keep track of the switch state
  bool _isSwitchOn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
        backgroundColor: Colors.blueAccent, // Custom background color
        elevation: 4.0, // Custom elevation
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              // Implement search functionality
            },
          ),
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {
              // Implement notifications functionality
            },
          ),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          _buildSwitchTile('Option 1', 'Description for option 1'),
          _buildSwitchTile('Option 2', 'Description for option 2'),
          _buildSwitchTile('Option 3', 'Description for option 3'),
        ],
      ),
    );
  }

  Widget _buildSwitchTile(String title, String description) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8.0),
      child: ListTile(
        contentPadding: EdgeInsets.all(16.0),
        title: Text(title),
        subtitle: Text(description),
        trailing: Switch(
          value: _isSwitchOn,
          onChanged: (bool value) {
            setState(() {
              _isSwitchOn = value;
            });
          },
        ),
      ),
    );
  }
}
