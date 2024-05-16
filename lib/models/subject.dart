class Subject {
  final String name;

  Subject(this.name);

  static List<Subject> getAllSubjects() {
    return [
      Subject("Pure Maths"),
      Subject("Applied Maths"),
      Subject("Combined Maths"),
      Subject("Physics"),
      Subject("High Maths"),
      Subject("Newtonian Physics"),
      Subject("Atomic Physics"),
      Subject("Quantum Physics"),
      Subject("High-Energy Particle Physics"),
      Subject("Nuclear Physics"),
      Subject("Molecular Physics"),
    ];
  }
}
