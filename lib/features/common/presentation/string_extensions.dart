/// Расширение для типа [String] на озоглавливание слова.
extension StringCapitalization on String {
  /// Озоглавить слово.
  String capitalize() {
    if (isEmpty) return this;
    return '${this[0].toUpperCase()}${substring(1)}';
  }
}
