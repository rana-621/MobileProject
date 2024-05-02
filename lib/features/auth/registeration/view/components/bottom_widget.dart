import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newappflutter/features/auth/dashboard/modules/users/view/model/repo/local_db_data.dart';
import 'package:newappflutter/features/auth/registeration/controller/cubit/registeration_cubit.dart';
import 'package:newappflutter/features/auth/registeration/view/pages/create_account_page.dart';
import 'package:newappflutter/features/auth/registeration/view/pages/forget_password.dart';
import 'package:newappflutter/features/auth/registeration/view/pages/verification_page.dart';
import 'package:sqflite/sqflite.dart';

class BottomNavigationWiidget extends StatelessWidget {
  const BottomNavigationWiidget({Key? key, required this.controller});

  final RegisterationCubit controller;

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: controller,
      child: BlocBuilder<RegisterationCubit, RegisterationState>(
        builder: (context, state) {
          return Column(
            children: [
              
              const SizedBox(height: 12),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    const Color(0xFF20B2AA),
                  ),
                ),
                onPressed: () {
                  controller.onPressedLoginButton(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const VerificationPage()),
                  );
                },
                child: const Text(
                  "Login",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 12),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    const Color(0xFF20B2AA),
                  ),
                ),
                onPressed: () {
                  // Navigate to the forget password page
                  // controller.onPressedLoginButton();
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ForgetPasswordPage()),
                  );
                },
                child: const Text(
                  "Forget Password",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        const Color(0xFF20B2AA),
                      ),
                    ),
                    onPressed: () {
                      // Navigate to the create new account page
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const CreateNewAccountPage()),
                      );
                    },
                    child: const Text(
                      "Create New Account",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              )
            ],
          );
        },
      ),
    );
  }
}
