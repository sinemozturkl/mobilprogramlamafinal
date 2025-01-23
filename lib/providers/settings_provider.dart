import 'package:flutter/material.dart';

class SettingsProvider with ChangeNotifier {
  // Kullanıcı teması (varsayılan olarak açık tema)
  bool _isDarkMode = false;

  // Getter ve Setter
  bool get isDarkMode => _isDarkMode;
  
  // Tema değiştirme fonksiyonu
  void toggleTheme() {
    _isDarkMode = !_isDarkMode;
    notifyListeners();  // UI'yi güncellemek için
  }

  // Diğer ayarlar için ek fonksiyonlar eklenebilir (Örneğin bildirim ayarları vs.)
}
