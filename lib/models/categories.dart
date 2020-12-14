class Category {
  final String id, title, image;
  final int numofProducts;

  Category({this.id, this.title, this.image, this.numofProducts});

  // Create Json Category fie
  factory Category.fromJson(Map<String, dynamic> json) {
    return Category(
      id: json["id"],
      title: json["title"],
      image: json["image"],
      numofProducts: json["numofProducts"],
    );
  }
}

Category category = Category(
  id: "1",
  title: "Armchair",
  image: "https://i.imgur.com/JqKDdxj.png",
  numofProducts: 100,
);
