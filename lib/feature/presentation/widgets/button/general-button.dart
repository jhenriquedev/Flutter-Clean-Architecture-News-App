import 'package:flutter/material.dart';
import 'package:newsapp/config/themes/app-themes.dart';
import 'package:newsapp/core/util/size/size-config.dart';

class GeneralButton extends StatelessWidget {

  const GeneralButton({
    Key ? key,
    this.text,
    this.press,
  }): super(key: key);

  
  final String ? text;
  final Function ? press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: getProportionateScreenHeight(56),
      child: TextButton(
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
          primary: Colors.white,
          backgroundColor: AppColors.colorPrimary,
        ),
        onPressed: press as void Function() ? ,
        child : Align(
          alignment: Alignment.center,
          child: Text(
            text!,
            style: TextStyle(
              fontSize: getProportionateScreenWidth(16),
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
