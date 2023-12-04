extension StringExtension on String {
  String splitCamelCasing() {
    final beforeCapitalLetter = RegExp(r'(?=[A-Z])');
    final firstLetter = substring(0, 1);
    return split(beforeCapitalLetter)
        .join(' ')
        .replaceFirst(firstLetter, firstLetter.toUpperCase());
  }
}
