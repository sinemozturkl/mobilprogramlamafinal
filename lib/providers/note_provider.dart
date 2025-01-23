import 'package:flutter/material.dart';

class Note {
  String title;
  String content;

  Note({
    required this.title,
    required this.content,
  });
}

class NoteProvider with ChangeNotifier {
  final List<Note> _notes = [];

  // Getter not listesi
  List<Note> get notes => _notes;

  // Not ekleme fonksiyonu
  void addNote(String title, String content) {
    _notes.add(Note(
      title: title,
      content: content,
    ));
    notifyListeners();  // UI'yi güncellemek için
  }

  // Not düzenleme fonksiyonu
  void updateNote(int index, String title, String content) {
    _notes[index] = Note(
      title: title,
      content: content,
    );
    notifyListeners();  // UI'yi güncellemek için
  }

  // Not silme fonksiyonu
  void deleteNote(int index) {
    _notes.removeAt(index);
    notifyListeners();  // UI'yi güncellemek için
  }
}
