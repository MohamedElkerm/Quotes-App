import 'package:clean_arch1/core/utils/app_strings.dart';
import 'package:clean_arch1/features/random_quote/presentation/widgets/quote_content.dart';
import 'package:flutter/material.dart';

class QuoteScreen extends StatefulWidget {
  const QuoteScreen({Key? key}) : super(key: key);

  @override
  State<QuoteScreen> createState() => _QuoteScreenState();
}

class _QuoteScreenState extends State<QuoteScreen> {

  Widget _buildBodyContext(){
    return Column(
      children:const [
        QuoteContent(),
      ],
    );
  }

  final appBar = AppBar(
    title:const Text(AppStrings.appName),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: _buildBodyContext(),
    ) ;
  }
}
