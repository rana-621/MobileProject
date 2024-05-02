import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newappflutter/core/utilies/context_extensions.dart';
import 'package:newappflutter/features/auth/verification/controller/cubit/verification_cubit.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class Verificationpage extends StatelessWidget {
  const Verificationpage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => VerificationCubit(),
      child: BlocBuilder<VerificationCubit, VerificationState>(
        builder: (context, state) {
        final  VerificationCubit cubit=context.read<VerificationCubit>();
         
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.blueGrey,
            ),
              body: Column(
                mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("enter your code"),
              Text(context.width.toString()),
              PinCodeTextField(
                mainAxisAlignment: MainAxisAlignment.center,
                      appContext: context,
                      pastedTextStyle: TextStyle(
                        color: Colors.green.shade600,
                        fontWeight: FontWeight.bold,
                      ),
                      length: 5,
                      obscureText: true,
                      obscuringCharacter: '*',
                      animationType: AnimationType.fade,
                      validator: (v) {
                        if (v!.length < 3) {
                          return "I'm from validator";
                        } else {
                          return null;
                        }
                      },
                      pinTheme: PinTheme(
                        shape: PinCodeFieldShape.circle,
                        borderRadius: BorderRadius.circular(0),
                        fieldHeight: context.width/6 ,
                        fieldWidth:context.width/6 ,
                        activeFillColor: Colors.white,
                        inactiveFillColor: Colors.grey,
                        inactiveColor: Colors.black,
                        activeColor: Colors.black,
                        fieldOuterPadding: EdgeInsets.only(right: context.width/30 ),
                       
                      ),
                      cursorColor: Colors.white,
                      animationDuration: Duration(milliseconds: 300),
                      textStyle: TextStyle(fontSize: 20, height: 1.6),
                      backgroundColor: Colors.blue.shade50,
                      enableActiveFill: true,
                      //errorAnimationController: errorController,
                      controller: cubit.pincode,
                      keyboardType: TextInputType.number,
                      boxShadows: [
                        BoxShadow(
                          offset: Offset(0, 1),
                          color: Colors.black12,
                          blurRadius: 10,
                        )
                      ],
                      onCompleted: (v) {
                        print("Completed");
                      },
                      // onTap: () {
                      //   print("Pressed");
                      // },
                      onChanged: (value) {
                       
                      },
                      beforeTextPaste: (text) {
                        print("Allowing to paste $text");
                        //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                        //but you can show anything you want here, like your pop up saying wrong paste format or etc
                        return true;
                      },
                    ),
              IconButton(onPressed: cubit.onTapConfirm, icon: Icon(Icons.done))
            ],
          ));
        },
      ),
    );
  }
}
