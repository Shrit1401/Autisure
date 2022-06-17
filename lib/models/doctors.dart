// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';


class DoctorInfo {
  final num id;
  final String name;
  final String specialist;
  final String contactNo;
  final bool isAssured;
  final String location;
  final String desc;
  final String imageUrl;

  DoctorInfo(
    this.id,
    this.name,
    this.specialist,
    this.contactNo,
    this.isAssured,
    this.location,
    this.desc,
    this.imageUrl,
  );

  DoctorInfo copyWith({
    num? id,
    String? name,
    String? specialist,
    String? contactNo,
    bool? isAssured,
    String? location,
    String? desc,
    String? imageUrl,
  }) {
    return DoctorInfo(
      id ?? this.id,
      name ?? this.name,
      specialist ?? this.specialist,
      contactNo ?? this.contactNo,
      isAssured ?? this.isAssured,
      location ?? this.location,
      desc ?? this.desc,
      imageUrl ?? this.imageUrl,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'specialist': specialist,
      'contactNo': contactNo,
      'isAssured': isAssured,
      'location': location,
      'desc': desc,
      'imageUrl': imageUrl,
    };
  }

  factory DoctorInfo.fromMap(Map<String, dynamic> map) {
    return DoctorInfo(
      map['id'] as num,
      map['name'] as String,
      map['specialist'] as String,
      map['contactNo'] as String,
      map['isAssured'] as bool,
      map['location'] as String,
      map['desc'] as String,
      map['imageUrl'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory DoctorInfo.fromJson(String source) =>
      DoctorInfo.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'DoctorInfo(id: $id, name: $name, specialist: $specialist, contactNo: $contactNo, isAssured: $isAssured, location: $location, desc: $desc, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is DoctorInfo &&
        other.id == id &&
        other.name == name &&
        other.specialist == specialist &&
        other.contactNo == contactNo &&
        other.isAssured == isAssured &&
        other.location == location &&
        other.desc == desc &&
        other.imageUrl == imageUrl;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        specialist.hashCode ^
        contactNo.hashCode ^
        isAssured.hashCode ^
        location.hashCode ^
        desc.hashCode ^
        imageUrl.hashCode;
  }
}

class DoctorModel {
  static List<DoctorInfo> doctorInfos = [];
}
