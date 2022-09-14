// ignore_for_file: equal_keys_in_map

import '../../domain/entities/feed_entity.dart';

class FeedModel extends FeedEntity {
  const FeedModel({
    required String id,
    required String name,
    required String description,
    required String range,
    required String status,
    required String image,
  }) : super(
          id: id,
          name: name,
          description: description,
          range: range,
          status: status,
          image: image,
        );

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
    };
  }

  factory FeedModel.fromMap(Map<String, dynamic> map) {
    return FeedModel(
      id: map['id'] as String, //OK
      name: map['name'] as String, //OK
      description: map['description'] as String,
      range: map['range'] as String,
      status: map['status'] as String,
      image: map['image'] as String,
    );
  }
}
