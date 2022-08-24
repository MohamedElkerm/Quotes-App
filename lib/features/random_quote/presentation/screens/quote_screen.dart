import 'package:clean_arch1/config/routes/app_routes.dart';
import 'package:clean_arch1/features/favorite_quote/presentation/screens/favorite_quote.dart';
import 'package:flutter/material.dart';

class QuoteScreen extends StatefulWidget {
  const QuoteScreen({Key? key}) : super(key: key);

  @override
  State<QuoteScreen> createState() => _QuoteScreenState();
}

class _QuoteScreenState extends State<QuoteScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: InkWell(
          onTap:()=>Navigator.pushNamed(context, Routes.favoriteQuoteRoute),
          child:const Text(
            'Quote',
            style: TextStyle(
              color: Colors.black,
              fontSize: 25,
            ),
          ),
        ),
      ),
    );
  }
}
