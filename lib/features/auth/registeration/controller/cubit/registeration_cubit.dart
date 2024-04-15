import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'registeration_state.dart';

class RegisterationCubit extends Cubit<RegisterationState> {
  RegisterationCubit() : super(RegisterationInitial());

  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController ageController = TextEditingController();

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  void onPressedLoginButton(BuildContext context) {
    if (formKey.currentState!.validate()) {
      // print(firstNameController.text);
      // print(lastNameController.text);
      // print(passwordController.text);
      // print(emailController.text);
      Navigator.pushNamed(context, 'create new account');
    } else {
      print('Invalid inputs');
    }
  }
}
