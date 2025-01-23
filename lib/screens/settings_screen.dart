import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Settings")),
      body: Center(
        child: SwitchListTile(
          title: Text("Dark Mode"),
          value: false, // Dark mode toggle
          onChanged: (value) {},
        ),
      ),
    );
  }
}
