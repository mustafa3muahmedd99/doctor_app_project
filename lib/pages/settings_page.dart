import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool _notificationsEnabled = true;
  bool _messageOptionEnabled = false;
  bool _videoCallOptionEnabled = false;
  bool _callOptionEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appbar(),
      body: ListView(
        children: [
          _buildSettingOption(
            icon: Icons.notifications,
            color: Colors.blue,
            title: 'Notifications',
            value: _notificationsEnabled,
            onChanged: (value) {
              setState(() {
                _notificationsEnabled = value;
              });
            },
          ),
          _buildSettingOption(
            icon: Icons.message,
            color: Colors.purple,
            title: 'Message Option',
            value: _messageOptionEnabled,
            onChanged: (value) {
              setState(() {
                _messageOptionEnabled = value;
              });
            },
          ),
          _buildSettingOption(
            icon: Icons.videocam,
            color: Colors.indigo,
            title: 'Video Call Option',
            value: _videoCallOptionEnabled,
            onChanged: (value) {
              setState(() {
                _videoCallOptionEnabled = value;
              });
            },
          ),
          _buildSettingOption(
            icon: Icons.call,
            color: Colors.red,
            title: 'Call Option',
            value: _callOptionEnabled,
            onChanged: (value) {
              setState(() {
                _callOptionEnabled = value;
              });
            },
          ),
        ],
      ),
    );
  }

  AppBar _appbar() {
    return AppBar(
      title: Text('Settings'),
      centerTitle: true,
      backgroundColor: Colors.white,
      elevation: 1,
    );
  }

  Widget _buildSettingOption({
    required IconData icon,
    required Color color,
    required String title,
    required bool value,
    required ValueChanged<bool> onChanged,
  }) {
    return Column(
      children: [
        ListTile(
          leading: Icon(icon, color: color),
          title: Text(title),
          trailing: Switch(
            value: value,
            onChanged: onChanged,
          ),
        ),
        Divider(),
      ],
    );
  }
}
