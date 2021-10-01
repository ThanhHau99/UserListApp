class Company {
  final String name;
  final String catchPhase;
  final String bs;

  Company({this.name, this.catchPhase, this.bs});

  factory Company.fromJson(Map<String, dynamic> json) {
    return Company(
      name: json['name'],
      catchPhase: json['catchPhrase'],
      bs: json['bs'],
    );
  }
}
