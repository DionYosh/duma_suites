import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool _notificationsEnabled = false;
  String _theme = 'Light';
  double _textSize = 16.0;
  String _language = 'English';

  @override
  void initState() {
    super.initState();
    _loadSettings();
  }

  _loadSettings() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _notificationsEnabled = prefs.getBool('notifications') ?? false;
      _theme = prefs.getString('theme') ?? 'Light';
      _textSize = prefs.getDouble('textSize') ?? 16.0;
      _language = prefs.getString('language') ?? 'English';
    });
  }

  _updateSettings() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('notifications', _notificationsEnabled);
    prefs.setString('theme', _theme);
    prefs.setDouble('textSize', _textSize);
    prefs.setString('language', _language);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: ListView(
        children: <Widget>[
          SwitchListTile(
            title: const Text('Enable Notifications'),
            value: _notificationsEnabled,
            onChanged: (bool value) {
              setState(() {
                _notificationsEnabled = value;
                _updateSettings();
              });
            },
          ),
          ListTile(
            title: const Text('Theme'),
            trailing: DropdownButton<String>(
              value: _theme,
              onChanged: (String? newValue) {
                setState(() {
                  _theme = newValue!;
                  _updateSettings();
                });
              },
              items: <String>['Light', 'Dark']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          ),
          ListTile(
            title: const Text('Text Size'),
            subtitle: Slider(
              value: _textSize,
              min: 10.0,
              max: 30.0,
              divisions: 20,
              label: _textSize.round().toString(),
              onChanged: (double value) {
                setState(() {
                  _textSize = value;
                  _updateSettings();
                });
              },
            ),
          ),
          ListTile(
            title: const Text('Language'),
            trailing: DropdownButton<String>(
              value: _language,
              onChanged: (String? newValue) {
                setState(() {
                  _language = newValue!;
                  _updateSettings();
                });
              },
              items: <String>['English', 'Spanish', 'French', 'German']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
