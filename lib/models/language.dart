class Language {
  final String language;

  Language(this.language);

  static List<Language> getAllLanguages() {
    return [
      Language("English"),
      Language("Sinhala"),
      Language("Tamil"),
    ];
  }
}
