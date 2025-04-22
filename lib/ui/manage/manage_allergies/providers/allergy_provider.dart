import 'package:flutter/material.dart';

class AllergyProvider with ChangeNotifier {
  // Daftar alergi yang tersedia
  final List<String> availableAllergies = ['Gluten', 'Kacang', 'Susu'];

  // Daftar alergi yang dipilih
  final List<String> _selectedAllergies = [];

  // Getter untuk alergi yang dipilih
  List<String> get selectedAllergies => _selectedAllergies;

  // Memeriksa apakah alergi sudah dipilih
  bool isSelected(String allergy) {
    return _selectedAllergies.contains(allergy);
  }

  // Toggle status alergi
  void toggleAllergy(String allergy) {
    if (isSelected(allergy)) {
      _selectedAllergies.remove(allergy);
    } else {
      _selectedAllergies.add(allergy);
    }
    notifyListeners(); // Memberitahukan perubahan
  }
}
