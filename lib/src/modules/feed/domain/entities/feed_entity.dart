import 'package:equatable/equatable.dart';

class FeedEntity extends Equatable {
  final String id;
  final bool private;
  final String name;

  const FeedEntity({
    required this.id,
    required this.private,
    required this.name,
  });

  @override
  List<Object> get props => [
        id,
        private,
        name,
      ];
}
