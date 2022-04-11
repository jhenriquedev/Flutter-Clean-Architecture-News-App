import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newsapp/config/themes/app-themes.dart';
import 'package:newsapp/core/util/size/size-config.dart';
import 'package:newsapp/feature/domain/domain.dart';
import 'package:newsapp/feature/presentation/cubit/cubit.dart';
import 'package:newsapp/feature/presentation/widgets/button/general-button.dart';
import 'package:newsapp/feature/presentation/widgets/sufix-icon/sufix-icon.dart';


class SignUpBody extends StatefulWidget {
  const SignUpBody({
    Key ? key
  }): super(key: key);
  @override
  SignUpBodyState createState() => SignUpBodyState();
}

class SignUpBodyState extends State < SignUpBody > {

  // Email field controller
  final TextEditingController ? _emailController = TextEditingController();

  // Password field controller
  final TextEditingController ? _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController!.dispose();
    _passwordController!.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return BlocConsumer < UserCubit, UserState > (
      builder: (context, userState) {
        if (userState is UserSuccess) {
          return BlocBuilder < AuthCubit, AuthState > (
            builder: (context, authState) {
              if (authState is Authenticated) {
                return Container();

              } else {
                return SafeArea(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
                    child: Stack(
                      children: [
                        Column(
                          children: [
                            SizedBox(height: getProportionateScreenHeight(200)),
                            emailField(),
                            SizedBox(height: getProportionateScreenHeight(30)),
                            passwordField(),
                            SizedBox(height: getProportionateScreenHeight(20)),
                          ],
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            margin: EdgeInsets.only(bottom: getProportionateScreenHeight(20)),
                            child: GeneralButton(
                              text: "SIGN UP",
                              press: () {
                                if (_emailController!.text.isNotEmpty && _passwordController!.text.isNotEmpty) {
                                  BlocProvider.of < UserCubit > (context).submitSignUp(
                                    user: UserEntity(
                                      email: _emailController!.text,
                                      password: _passwordController!.text,
                                    )
                                  );
                                }
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }
            }
          );
        }

        return SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
            child: Stack(
              children: [
                Column(
                  children: [
                    SizedBox(height: getProportionateScreenHeight(200)),
                    emailField(),
                    SizedBox(height: getProportionateScreenHeight(30)),
                    passwordField(),
                    SizedBox(height: getProportionateScreenHeight(20)),
                  ],
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    margin: EdgeInsets.only(bottom: getProportionateScreenHeight(20)),
                    child: GeneralButton(
                      text: "SIGN UP",
                      press: () {
                        if (_emailController!.text.isNotEmpty && _passwordController!.text.isNotEmpty) {
                          BlocProvider.of < UserCubit > (context).submitSignUp(
                            user: UserEntity(
                              email: _emailController!.text,
                              password: _passwordController!.text,
                            )
                          );
                        }
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
      listener: (context, userState) {
        if (userState is UserSuccess) {
          BlocProvider.of < AuthCubit > (context).loggedIn();
        }
        if (userState is UserFailure) { }
      }
    );
  }

  TextFormField emailField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      controller: _emailController,
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
      controller: _passwordController,
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
