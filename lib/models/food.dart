// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class FoodInfo {
  final num id;
  final String name;
  final String price;
  final String description;
  final String image;
  final String link;
  FoodInfo({
    required this.id,
    required this.name,
    required this.price,
    required this.description,
    required this.image,
    required this.link,
  });

  FoodInfo copyWith({
    num? id,
    String? name,
    String? price,
    String? description,
    String? image,
    String? link,
  }) {
    return FoodInfo(
      id: id ?? this.id,
      name: name ?? this.name,
      price: price ?? this.price,
      description: description ?? this.description,
      image: image ?? this.image,
      link: link ?? this.link,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'price': price,
      'description': description,
      'image': image,
      'link': link,
    };
  }

  factory FoodInfo.fromMap(Map<String, dynamic> map) {
    return FoodInfo(
      id: map['id'] as num,
      name: map['name'] as String,
      price: map['price'] as String,
      description: map['description'] as String,
      image: map['image'] as String,
      link: map['link'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory FoodInfo.fromJson(String source) =>
      FoodInfo.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'FoodInfo(id: $id, name: $name, price: $price, description: $description, image: $image, link: $link)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is FoodInfo &&
        other.id == id &&
        other.name == name &&
        other.price == price &&
        other.description == description &&
        other.image == image &&
        other.link == link;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        price.hashCode ^
        description.hashCode ^
        image.hashCode ^
        link.hashCode;
  }
}

class FoodModel {
  static List<FoodInfo> foodInfos = [];
}

int dollarToRupee(String price) {
  return int.parse(price) * 70;
  // return price * 80;
}
