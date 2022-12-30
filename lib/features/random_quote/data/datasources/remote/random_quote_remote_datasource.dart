import 'dart:convert';

import 'package:clean_arch1/core/api/end_point.dart';
import 'package:clean_arch1/core/error/exceptions.dart';
import 'package:clean_arch1/core/utils/app_strings.dart';
import 'package:clean_arch1/features/random_quote/data/models/model.dart';
import 'package:http/http.dart' as http;

abstract class RandomQuoteRemoteDataSource {
  Future<QuoteModel> getRandomQuote();
}

class RandomQuoteRemoteDataSourceImpl implements RandomQuoteRemoteDataSource{
  http.Client client;
  RandomQuoteRemoteDataSourceImpl({required this.client});

  @override
  Future<QuoteModel> getRandomQuote() async{
    final response =await client.get(Uri.parse(EndPoint.randomQuote) , headers:{
      'X-RapidAPI-Key':AppStrings.X_RapidAPI_Key,
      'X-RapidAPI-Host':AppStrings.X_RapidAPI_Host,
    });
    if(response.statusCode == 200){
      return QuoteModel.fromJson(json.decode(response.body));
    }else{
      throw ServerException();
    }
  }

}