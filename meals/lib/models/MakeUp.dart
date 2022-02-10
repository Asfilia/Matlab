class MakeUp {
  final String brand;
  final String name;
  final String image_link;
  final String price;
  final String description;

  MakeUp({this.brand, this.name, this.image_link, this.price, this.description});

  factory MakeUp.fromJson(Map<String, dynamic> json) {
    return MakeUp (
      brand: json['brand'],
      name: json['name'],
      image_link: json['image_link'],
      price: json['price'],
      description: json['description'],
    );
  }
}