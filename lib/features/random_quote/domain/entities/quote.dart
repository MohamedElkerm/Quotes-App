import 'package:equatable/equatable.dart';

class Quote extends Equatable {
  final int id;
  final String content;
  final String url;

  const Quote({required this.id, required this.content, required this.url});

  @override
  List<Object?> get props => [
        id,
        content,
        url,
      ];
}

