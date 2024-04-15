import 'package:flutter/material.dart';
import 'package:newappflutter/features/auth/registeration/view/components/create_account_widget.dart';

class CreateNewAccountPage extends StatelessWidget {
  const CreateNewAccountPage({super.key});

 @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Create New Account'),
        ),
        body:  CreateNewAccountWidget(),
      ),
    );
  }
}