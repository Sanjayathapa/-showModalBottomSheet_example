import 'package:flutter/material.dart';

class BodyExpansionProvider with ChangeNotifier {
  bool _isExpanded = true;

  bool get isExpanded => _isExpanded;

  void toggleExpanded() {
    _isExpanded = !_isExpanded;
    notifyListeners();
  }
}
class BodyExpansioForpartyProvider with ChangeNotifier {
  bool _isExpanded = true;

  bool get isExpanded => _isExpanded;

  void toggleExpanded() {
    _isExpanded = !_isExpanded;
    notifyListeners();
  }
}