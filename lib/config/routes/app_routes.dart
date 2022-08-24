import 'package:clean_arch1/core/utils/app_strings.dart';
import 'package:clean_arch1/features/favorite_quote/presentation/screens/favorite_quote.dart';
import 'package:clean_arch1/features/random_quote/presentation/screens/quote_screen.dart';
import 'package:flutter/material.dart';

class Routes{
  static const String initialRoute = '/';
  static const String favoriteQuoteRoute = '/favoritesQuote';
}

class AppRoutes{
  static Route? onGenerateRoute(RouteSettings routeSettings){
    switch(routeSettings.name){
      case Routes.initialRoute:
        return MaterialPageRoute(builder: (context)=>const QuoteScreen());
      case Routes.favoriteQuoteRoute:
        return MaterialPageRoute(builder: (context)=>const FavoriteQuoteScreen());
      default :
        return undefinedRoute();
    }
  }
  static Route<dynamic>undefinedRoute(){
    return MaterialPageRoute(builder: (context)=>const Scaffold(
      body: Center(
        child: Text(AppStrings.defaultPage),
      ),
    ));
  }
}