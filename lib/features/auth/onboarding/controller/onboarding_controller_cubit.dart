import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:meta/meta.dart';
import 'package:newappflutter/features/auth/onboarding/model/onboarding_model.dart';
import 'package:newappflutter/features/auth/registeration/view/pages/registeration_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'onboarding_controller_state.dart';

class OnboardingControllerCubit extends Cubit<OnboardingControllerState> {
  OnboardingControllerCubit() : super(OnboardingControllerInitial());
  PageController pageController = PageController();

  void onChangeToNext() {
    pageController.nextPage(
        duration: const Duration(seconds: 2), curve: Curves.bounceIn);
  }

  Future<void> onCallSkip(BuildContext context) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();

    await sharedPreferences.setBool('onbaording', true);
    Navigator.push(
        context,
        MaterialPageRoute<void>(
          builder: (BuildContext context) =>  const RegisterationPage(),
        ));
  }

  List data = [
    OnboardingModel(
      image: 'assets/images/pexels-madison-inouye-1405773.jpg',
      title: 'First',
      subtitile: 'First screen',
      color: Colors.green,
    ),
    OnboardingModel(
      image: 'assets/images/free-photo-of-under-the-bridge.jpeg',
      title: 'Second',
      subtitile: 'Second screen',
      color: Colors.red,
    ),
    OnboardingModel(
      image: 'assets/images/pexels-photo-1111369.webp',
      title: 'Third',
      subtitile: 'Third screen',
      color: Colors.blue,
    ),
  ];
}
