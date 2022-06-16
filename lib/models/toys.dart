// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class ToysInfo {
  final num id;
  final String name;
  final String price;
  final String description;
  final String imageUrl;
  final String link;

  ToysInfo(this.id, this.name, this.price, this.description, this.imageUrl,
      this.link);

  ToysInfo copyWith({
    num? id,
    String? name,
    String? price,
    String? description,
    String? imageUrl,
    String? link,
  }) {
    return ToysInfo(
      id ?? this.id,
      name ?? this.name,
      price ?? this.price,
      description ?? this.description,
      imageUrl ?? this.imageUrl,
      link ?? this.link,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'price': price,
      'description': description,
      'imageUrl': imageUrl,
      'link': link,
    };
  }

  factory ToysInfo.fromMap(Map<String, dynamic> map) {
    return ToysInfo(
      map['id'] as num,
      map['name'] as String,
      map['price'] as String,
      map['description'] as String,
      map['imageUrl'] as String,
      map['link'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory ToysInfo.fromJson(String source) =>
      ToysInfo.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'ToysInfo(id: $id, name: $name, price: $price, description: $description, imageUrl: $imageUrl, link: $link)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ToysInfo &&
        other.id == id &&
        other.name == name &&
        other.price == price &&
        other.description == description &&
        other.imageUrl == imageUrl &&
        other.link == link;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        price.hashCode ^
        description.hashCode ^
        imageUrl.hashCode ^
        link.hashCode;
  }
}

class ToysModel {
  static List<ToysInfo> toysInfos = [];
}
