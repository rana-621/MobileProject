import 'package:flutter/material.dart';
// import 'package:newappflutter/core/utilies/validation.dart';

// ignore: must_be_immutable
class CreateNewAccountWidget extends StatelessWidget {
   CreateNewAccountWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextFormField(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          controller: TextEditingController(),
          keyboardType: TextInputType.name,
          // validator: MyValidation().namevalidate,
          decoration: InputDecoration(
            label: const Text("First Name"),
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
          controller: TextEditingController(),
          keyboardType: TextInputType.name,
          // validator: MyValidation().namevalidate,
          decoration: decoration.copyWith(
            labelText: 'Last Name'
          ),
          ),

          const SizedBox(height: 20), 
          TextFormField(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          controller: TextEditingController(),
          keyboardType: TextInputType.name,
          // validator: MyValidation().namevalidate,
          decoration: decoration.copyWith(
            labelText: 'Email',
            hintText: 'xxxx@gmail.com',
            prefixIcon: const Icon(Icons.mail),
          ),
          ),

          const SizedBox(height: 20), 
          TextFormField(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          controller: TextEditingController(),
          keyboardType: TextInputType.name,
          // validator: MyValidation().namevalidate,
          decoration: decoration.copyWith(
            labelText: 'Password',
            prefixIcon: const Icon(Icons.lock),

          ),
          obscureText: true,
          obscuringCharacter: "*",
          ),
      ],
    );
  }
  InputDecoration decoration =  InputDecoration(
            // label: Text("Last Name"),
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
          );
}
