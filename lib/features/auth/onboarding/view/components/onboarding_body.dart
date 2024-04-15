import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newappflutter/features/auth/onboarding/controller/onboarding_controller_cubit.dart';

class OnboardingBody extends StatelessWidget {
  final OnboardingControllerCubit controller;

  const OnboardingBody({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text("Welcome to the boarding page"),
        Expanded(
          child: BlocProvider<OnboardingControllerCubit>.value(
            value: controller,
            child: BlocBuilder<OnboardingControllerCubit,
                OnboardingControllerState>(
              builder: (context, state) {
                final controller = context.read<OnboardingControllerCubit>();

                return PageView.builder(
                  controller: controller.pageController,
                  itemCount: controller.data.length,
                  itemBuilder: (context, index) {
                    final onboardingItem = controller.data[index];

                    return Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            onboardingItem.image,
                            fit: BoxFit.fitWidth,
                          ),
                          const SizedBox(height: 20),
                          Text(
                            onboardingItem.title,
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: onboardingItem.color,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            onboardingItem.subtitile,
                            style: const TextStyle(
                              fontSize: 18,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
