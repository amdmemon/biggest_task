import 'package:fibe_ui/src/core/app_colors.dart';
import 'package:fibe_ui/src/core/app_size_config.dart';
import 'package:flutter/material.dart';

import 'auth_textfield.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w(context)),
      child: Column(
        children: [
          SizedBox(
            height: 21.h(context),
          ),
          const AuthTextField(text: 'Full name', hindText: 'Placeholder'),
          SizedBox(height: 40.h(context)),
          const AuthTextField(text: 'Email', hindText: 'Email'),
          SizedBox(height: 16.h(context)),
          const AuthTextField(text: 'Password', hindText: 'Password',isPassword: true,),
          SizedBox(height: 16.h(context)),
          const AuthTextField( text: 'Re-Enter Password ', hindText: 'Re-Enter Password',isPassword: true,),
        ],
      ),
    ));
  }
}
