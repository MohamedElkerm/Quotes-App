import 'package:clean_arch1/core/error/exceptions.dart';
import 'package:clean_arch1/core/error/failures.dart';
import 'package:clean_arch1/core/network/network_info.dart';
import 'package:clean_arch1/features/random_quote/data/datasources/local/random_quote_local.dart';

import 'package:clean_arch1/features/random_quote/data/datasources/remote/random_quote_remote_datasource.dart';
import 'package:clean_arch1/features/random_quote/domain/entities/quote.dart';
import 'package:clean_arch1/features/random_quote/domain/repositries/quote_repository.dart';
import 'package:dartz/dartz.dart';

class QuoteRepositoryImpl implements QuoteRepository {
  final NetworkInfo networkInfo;
  final RandomQuoteRemoteDataSource randomQuoteRemoteDataSource;
  final RandomQuoteLocalDataSource randomQuoteLocalDataSource;

  QuoteRepositoryImpl({
    required this.networkInfo,
    required this.randomQuoteRemoteDataSource,
    required this.randomQuoteLocalDataSource,
  });

  @override
  Future<Either<Failure, Quote>> getRandomQuote() async {
    if (await networkInfo.isConnected) {
      try {
        final remoteRandomQuote =
            await randomQuoteRemoteDataSource.getRandomQuote();
        randomQuoteLocalDataSource.cacheQuote(remoteRandomQuote);
        return Right(remoteRandomQuote);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      try {
        final cacheRandomQuote =
            await randomQuoteLocalDataSource.getLastRandomQuote();
        return Right(cacheRandomQuote);
      } on CacheException {
        return Left(CacheFailure());
      }
    }
  }
}
