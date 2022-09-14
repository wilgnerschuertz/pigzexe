import 'package:equatable/equatable.dart';

class FeedEntity extends Equatable {
  final String id;
  final String name;
  final String description;
  final String range;
  final String status;
  final String image;

  const FeedEntity({
    required this.id,
    required this.name,
    required this.description,
    required this.range,
    required this.status,
    required this.image,
  });

  @override
  List<Object> get props => [
        id,
        name,
        description,
        range,
        status,
        image,
      ];
}
