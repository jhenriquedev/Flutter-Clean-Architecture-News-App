import 'package:flutter/material.dart';
import 'package:newsapp/core/util/size/size-config.dart';
import 'components/body.dart';

class SignUp extends StatelessWidget {
  
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold( 
      body: SignUpBody()
    );
  }
}