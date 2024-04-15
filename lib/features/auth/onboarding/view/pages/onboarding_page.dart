import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newappflutter/features/auth/onboarding/controller/onboarding_controller_cubit.dart';
import 'package:newappflutter/features/auth/onboarding/view/components/onboarding_body.dart';
import 'package:newappflutter/features/auth/onboarding/view/components/onboarding_buttons.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocProvider<OnboardingControllerCubit>(
        create: (context) => OnboardingControllerCubit(),
        child:
            BlocBuilder<OnboardingControllerCubit, OnboardingControllerState>(
          builder: (context, state) {
            final controller = context.read<OnboardingControllerCubit>();

            return Scaffold(
              body: OnboardingBody(
                controller: controller,
              ),
              bottomNavigationBar: OnboardingButtonWidget(
                controller: controller,
              ),
            );
          },
        ),
      ),
    );
  }
}
