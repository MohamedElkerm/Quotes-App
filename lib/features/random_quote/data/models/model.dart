import 'package:clean_arch1/features/random_quote/domain/entities/quote.dart';

class QuoteModel extends Quote {
  const QuoteModel({
    required int id,
    required String content,
    required String url,
  }) : super(
          id: id,
          content: content,
          url: url,
        );

  factory QuoteModel.fromJson(json) =>
      QuoteModel(id: json['id'], content: json['content'], url: json['url']);

  Map<String, dynamic> toJson(json) => {
        'id': id,
        'content': content,
        'url': url,
      };
}
