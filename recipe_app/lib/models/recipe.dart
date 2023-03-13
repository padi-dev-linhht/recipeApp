class Recipe {
  String id;
  String name;
  String headline;
  String description;
  String thumb;
  String image;
  String calories;
  String carbs;
  String proteins;
  String fats;
  int difficulty;
  String time;

  Recipe({
    required this.id,
    required this.name,
    required this.headline,
    required this.description,
    required this.thumb,
    required this.image,
    required this.calories,
    required this.carbs,
    required this.proteins,
    required this.fats,
    required this.difficulty,
    required this.time,
  });

  factory Recipe.fromJson(Map<String, dynamic> json) {
    return Recipe(
      id: json['id'],
      name: json['name'],
      headline: json['headline'],
      description: json['description'],
      thumb: json['thumb'],
      image: json['image'],
      calories: json['calories'],
      carbs: json['carbos'],
      proteins: json['proteins'],
      fats: json['fats'],
      difficulty: json['difficulty'],
      time: json['time'],
    );
  }
}
