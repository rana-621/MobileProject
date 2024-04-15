import 'package:flutter/material.dart';
import 'package:newappflutter/features/auth/onboarding/view/components/onboarding_body.dart';
import 'package:newappflutter/features/auth/onboarding/view/pages/onboarding_page.dart';
import 'package:newappflutter/features/auth/registeration/view/pages/create_account_page.dart';
import 'package:newappflutter/features/auth/registeration/view/pages/registeration_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();

  bool onBoarding = sharedPreferences.getBool("onboarding") ?? false;

  MaterialApp materialApp = MaterialApp(
    home: onBoarding ? RegisterationPage() : OnBoardingPage(),
    // onGenerateRoute: MyRoutes.onGenerateRoute,
    // onGenerateInitialRoutes: (_) => MyRoutes.initRoutes,
  );
  runApp(materialApp);
}

// //Routes Of the Create New Account Page and Registeration Page
// class MyRoutes {
//   static List<Route> initRoutes = [
//     MaterialPageRoute<dynamic>(
//       builder: (BuildContext context) => const OnBoardingPage(),
//     ),
//     MaterialPageRoute<void>(
//       builder: (BuildContext context) => const RegisterationPage(),
//     ),
//   ];

//   static Route<dynamic> onGenerateRoute(RouteSettings settings) {
//     switch (settings.name) {
//       case 'create new account':
//         return MaterialPageRoute<dynamic>(
//           builder: (BuildContext context) => const CreateNewAccountPage(),
//         );
//       case 'register':
//         return MaterialPageRoute<dynamic>(
//           builder: (BuildContext context) => const RegisterationPage(),
//         );
//       default:
//         return MaterialPageRoute<dynamic>(
//           builder: (BuildContext context) => const OnBoardingPage(),
//         );
//     }
//   }
// }
