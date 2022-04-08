import 'package:flutter/material.dart';
import 'package:newsapp/core/util/size/size-config.dart';
import 'package:newsapp/feature/presentation/widgets/button/general-button.dart';
import 'signup-form.dart';

class SignupBody extends StatelessWidget {

  const SignupBody({
    Key ? key
  }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: Stack(
          children: [
            Column(
              children: [
                SizedBox(height: getProportionateScreenHeight(200)),
                SignupForm(),
                SizedBox(height: getProportionateScreenHeight(20)),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                margin: EdgeInsets.only(bottom: getProportionateScreenHeight(20)),
                child: GeneralButton(
                  text: "SIGN UP",
                  press: () {},
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
