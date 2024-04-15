import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newappflutter/features/auth/onboarding/controller/onboarding_controller_cubit.dart';

class OnboardingButtonWidget extends StatelessWidget {
  OnboardingButtonWidget({super.key, required this.controller});
  OnboardingControllerCubit controller;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<OnboardingControllerCubit>.value(
      value: controller,
      child: BlocBuilder<OnboardingControllerCubit, OnboardingControllerState>(
        builder: (context, state) {
          final controller = context.read<OnboardingControllerCubit>();

          return SizedBox(
            height: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                    onPressed: () {
                      controller.onCallSkip(context);
                    },
                    child: const Text("skip")),
                TextButton(
                    onPressed: controller.onChangeToNext,
                    child: const Text("next")),
              ],
            ),
          );
        },
      ),
    );
  }
}
