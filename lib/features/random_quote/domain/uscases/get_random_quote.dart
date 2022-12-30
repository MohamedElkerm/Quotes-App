import 'package:clean_arch1/core/error/failures.dart';
import 'package:clean_arch1/core/usecases/usecase.dart';
import 'package:clean_arch1/features/random_quote/domain/entities/quote.dart';
import 'package:clean_arch1/features/random_quote/domain/repositries/quote_repository.dart';
import 'package:dartz/dartz.dart';

class GetRandomQuote implements UseCase<Quote, NoParams> {
  final QuoteRepository quoteRepository;

  GetRandomQuote({required this.quoteRepository});
  @override
  Future<Either<Failure, Quote>>? call(NoParams params) {
    return quoteRepository.getRandomQuote();
  }
}
