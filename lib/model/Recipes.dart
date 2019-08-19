class Recipes {
  String id;
  String title;
  String category;
  String photoCover;

  Recipes(
      this.id,
      this.title,
      this.category,
      this.photoCover,
  );

  Recipes.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        title = json['title'],
        category = json['category'],
        photoCover = json['photo_cover'];

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'category': title,
      'photo_cover': photoCover
    };
  }
}