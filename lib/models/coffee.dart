class Coffee {
  int id;
  String name;
  String poster;

  Coffee({
    required this.id,
    required this.name,
    required this.poster,
  });

  factory Coffee.fromJson(Map<String, dynamic> json) {
    return Coffee(
      id: json['id'],
      name: json['name'],
      poster: json['poster'],
    );
  }
}
