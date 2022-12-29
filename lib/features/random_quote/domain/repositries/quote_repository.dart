import 'package:clean_arch1/core/error/failures.dart';
import 'package:clean_arch1/features/random_quote/domain/entities/quote.dart';
import 'package:dartz/dartz.dart';

abstract class QuoteRepository {
  Future<Either<Failure, Quote>> getRandomQuote();

  }