// ignore_for_file: equal_keys_in_map

import '../../domain/entities/feed_entity.dart';

class FeedModel extends FeedEntity {
  const FeedModel({
    required String id,
    required bool private,
    required String name,
  }) : super(
          id: id,
          private: private,
          name: name,
        );

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      '_id': id,
      'privado': private,
      'usuario_autor_nome': name,
    };
  }

  factory FeedModel.fromMap(Map<String, dynamic> map) {
    return FeedModel(
      id: map['_id'] as String, //OK
      private: map['privado'] as bool, //OK
      name: map['usuario_autor_nome'] as String, //OK
    );
  }
}
