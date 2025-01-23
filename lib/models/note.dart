class Note {
  final String title; // Notun başlığı
  final String content; // Notun içeriği
  final DateTime dateTime; // Notun oluşturulma zamanı

  // Yapıcı metot
  Note({
    required this.title,
    required this.content,
    required this.dateTime,
  });
}
