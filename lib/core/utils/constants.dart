import 'package:flutter/material.dart';
import 'package:toast/toast.dart';

class Constants {
  static void showErrorDialog({required BuildContext context, required String msg}) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text(
              msg,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 16,
              ),
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                style: TextButton.styleFrom(
                  primary: Colors.black,
                  textStyle: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  )
                ),
                child: const Text('Ok'),
              ),
            ],
          );
        });
  }

  static void initToast(context){
    ToastContext().init(context);
  }
  static void showToast({required String msg }){
    Toast.show(msg,duration: 3,gravity:Toast.bottom,backgroundColor: Colors.teal,);
  }
}
