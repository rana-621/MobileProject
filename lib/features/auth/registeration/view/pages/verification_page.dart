
import 'package:flutter/material.dart';
import 'package:newappflutter/features/auth/registeration/view/components/verification_widget.dart';

class VerificationPage extends StatelessWidget {
  const VerificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Verification Code'),
        ),
        body: const VerificationWidget(),
      ),
    );
  }
}
