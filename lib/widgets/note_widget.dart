import 'package:flutter/material.dart';

class NoteWidget extends StatelessWidget {
  const NoteWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 182, 32, 233),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        'Your Note Here',
        style: TextStyle(color: Colors.white, fontSize: 18),
      ),
    );
  }
}
