import 'package:flutter/material.dart';
import 'package:newappflutter/features/auth/registeration/view/components/forget_pass_widget.dart';

class ForgetPasswordPage extends StatelessWidget {
  const ForgetPasswordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Forget Password'),
        ),
        body: const ForgetPasswordWidget(),
      ),
    );
  }
}
