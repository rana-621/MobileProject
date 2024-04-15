import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newappflutter/core/utilies/context_extensions.dart';
import 'package:newappflutter/core/utilies/validation.dart';
import 'package:newappflutter/features/auth/registeration/controller/cubit/registeration_cubit.dart';
import 'package:newappflutter/features/auth/registeration/view/components/text_name_format.dart';

class RequiredDataWidget extends StatelessWidget {
  const RequiredDataWidget({Key? key, required this.controller});

  final RegisterationCubit controller;

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: controller,
      child: BlocBuilder<RegisterationCubit, RegisterationState>(
        builder: (context, state) {
          return Form(
            key: controller.formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(25),
                      child: Image.asset(
                        'assets/images/free-photo-of-under-the-bridge.jpeg',
                        width: 90,
                        height: 80,
                      ),
                    ),
                    SizedBox(
                      width: context.width / 5,
                    ),
                    const Text(
                      ' Sign in the site',
                      style: TextStyle(
                        color: Color(0xFF20B2AA),
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  controller: controller.firstNameController,
                  keyboardType: TextInputType.name,
                  validator: MyValidation().namevalidate,
                  inputFormatters: [
                    FilteringTextInputFormatter.allow(RegExp(r'[A-Z]')),
                    FilteringTextInputFormatter.deny(RegExp(r'[D]')),
                  ],
                  decoration: InputDecoration(
                    label: const Text("Your Name"),
                    hintText: 'Write your name',
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.grey,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.blue,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.red,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  controller: controller.lastNameController,
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    labelText: 'Email',
                    hintText: 'xxxx@gmail.com',
                    prefixIcon: const Icon(Icons.mail),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.grey,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.blue,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.red,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  controller: controller.passwordController,
                  obscureText: true,
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    prefixIcon: const Icon(Icons.lock),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.grey,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.blue,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.red,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),

                // age as years
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  controller: controller.ageController,
                  keyboardType: TextInputType.name,
                  inputFormatters: [MyAgeTextFieldFormat()],
                  decoration: InputDecoration(
                    labelText: 'age',
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.grey,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.blue,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.red,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
