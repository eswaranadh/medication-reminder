import 'package:flutter/material.dart';

class DialogUtils {
  static DialogUtils _instance = new DialogUtils.internal();

  DialogUtils.internal();

  factory DialogUtils() => _instance;

  static void showCustomDialog(BuildContext context,
      {@required String title = "pandey",  String okBtnText = "Ok", String cancelBtnText = "Cancel", required void Function()? okBtnFunction}) {
    showDialog(
        context: context,
        builder: (_) {
          return AlertDialog(
            title: Text(title),
            content:Image.asset(
              'assets/images/check_gif.gif',
              height: 100, 
              ),
            actions: <Widget>[
              TextButton(
                child: Text(okBtnText),
                onPressed: okBtnFunction
              ),
              TextButton(
                  child: Text(cancelBtnText),
                  onPressed: () => Navigator.pop(context))
            ],
          );
        });
  }
 }