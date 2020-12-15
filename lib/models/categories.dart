class Categories {
  final String id, title, image;
  final int numofProducts;

  Categories({this.id, this.title, this.image, this.numofProducts});

  // Create Json Category fie
  factory Categories.fromJson(Map<String, dynamic> json) {
    return Categories(
      id: json["id"],
      title: json["title"],
      image: json["image"],
      numofProducts: json["numofProducts"],
    );
  }
}

Categories category = Categories(
  id: "1",
  title: "Armchair",
  image: "https://i.imgur.com/JqKDdxj.png",
  numofProducts: 100,
);
