import 'package:flutter/material.dart';
import 'task_screen.dart';
import 'settings_screen.dart';
import '../widgets/weather_widget.dart';
import '../widgets/task_widget.dart';  // TaskWidget'ı import ettik
import '../widgets/note_widget.dart';  // NoteWidget'ı doğru şekilde import ediyoruz

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_init_to_null
    var task = null;
    var taskWidget = TaskWidget(task: task,);
    return Scaffold(
      appBar: AppBar(title: Text("Personal Assistant")),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            ListTile(
              title: Text("Settings"),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => SettingsScreen()));
              },
            ),
          ],
        ),
      ),
      body: Column(
        children: <Widget>[
          WeatherWidget(),
          taskWidget,  // Burada TaskWidget kullanımı
          NoteWidget(),  // Burada NoteWidget kullanımı
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => TaskScreen()));
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
