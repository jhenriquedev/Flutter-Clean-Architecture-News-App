import 'package:flutter/material.dart';
import 'package:newsapp/config/themes/app-themes.dart';
import 'package:newsapp/core/util/size/size-config.dart';
import 'package:newsapp/feature/presentation/widgets/sufix-icon/sufix-icon.dart';


class SignupForm extends StatefulWidget {
  const SignupForm({
    Key ? key
  }): super(key: key);
  @override
  SignupFormState createState() => SignupFormState();
}

class SignupFormState extends State < SignupForm > {
  final formKey = GlobalKey < FormState > ();

  String ? email;
  String ? password;
  String ? conformPassword;

  bool remember = false;
  final List < String ? > errors = [];

  void addError({
    String ? error
  }) {
    if (!errors.contains(error)) {
      setState(() {
        errors.add(error);
      });
    }
  }

  void removeError({
    String ? error
  }) {
    if (errors.contains(error)) {
      setState(() {
        errors.remove(error);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          emailField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          passwordField()
        ],
      ),
    );
  }

  TextFormField emailField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        hintText: "Email",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.colorTint500, width: 2.0),
          borderRadius: BorderRadius.circular(5),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.colorPrimary, width: 2.0),
          borderRadius: BorderRadius.circular(5),
        ),
        suffixIcon: SurffixIcon(svgIcon: "assets/icons/Mail.svg"),
      ),
    );
  }
  TextFormField passwordField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        hintText: "Password",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.colorTint500, width: 2.0),
          borderRadius: BorderRadius.circular(5),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.colorPrimary, width: 2.0),
          borderRadius: BorderRadius.circular(5),
        ),
        suffixIcon: SurffixIcon(svgIcon: "assets/icons/Lock.svg"),
      ),
    );
  }
}