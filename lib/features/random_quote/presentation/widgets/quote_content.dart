import 'package:clean_arch1/core/utils/app_colors.dart';
import 'package:clean_arch1/core/utils/app_strings.dart';
import 'package:clean_arch1/core/utils/constants.dart';
import 'package:flutter/material.dart';

class QuoteContent extends StatelessWidget {
  const QuoteContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(25),
          margin: const EdgeInsets.all(20),
          decoration: BoxDecoration(
              color: AppColors.primary, borderRadius: BorderRadius.circular(30)),
          child: Column(
            children: const [
              Text(
                AppStrings.testQuote,
                style: TextStyle(
                    height: 1.5,
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                AppStrings.testAuthor,
                style: TextStyle(
                    height: 1.5,
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
        const SizedBox(height: 15,),
        CircleAvatar(
          maxRadius: 25,
          backgroundColor: AppColors.primary,
          child: IconButton(
            onPressed: (){
              Constants.initToast(context);
              Constants.showToast(msg: 'msg');
            },
            icon:const Icon(Icons.replay,color: Colors.white),
          ),
        )
      ],
    );
  }
}
