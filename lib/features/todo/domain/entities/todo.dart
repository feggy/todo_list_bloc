import 'package:equatable/equatable.dart';

class Todo extends Equatable {
  const Todo({
    required this.id,
    required this.text,
    this.isArchive = false,
  });

  final String id;
  final String text;
  final bool isArchive;

  @override
  List<Object?> get props => [id, text, isArchive];
}
