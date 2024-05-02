import 'package:device_preview/device_preview.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:newappflutter/features/auth/dashboard/view/pages/dash_board.dart';
//import 'package:newappflutter/features/auth/onboarding/view/components/onboarding_body.dart';
import 'package:newappflutter/features/auth/onboarding/view/pages/onboarding_page.dart';
import 'package:newappflutter/features/auth/registeration/view/pages/create_account_page.dart';
import 'package:newappflutter/features/auth/registeration/view/pages/registeration_page.dart';
import 'package:newappflutter/features/auth/verification/model/view/pages/verification_page.dart';
import 'package:newappflutter/firebase_options.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
/*await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);*/

  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();

  bool onBoarding = sharedPreferences.getBool("onboarding") ?? false;

  MaterialApp materialApp = MaterialApp(
    builder: DevicePreview.appBuilder,
    useInheritedMediaQuery: true,
    // home: onBoarding ? RegisterationPage() : OnBoardingPage(),
    onGenerateRoute: MyRoutes.onGenerateRoute,
    onGenerateInitialRoutes: (_) => MyRoutes.initRoutes,
  );
  runApp(
     DevicePreview(
    enabled: true,
    builder: (context) => materialApp, // Wrap your app
  ),
  );
}

//Routes Of the Create New Account Page and Registeration Page
class MyRoutes {
  static List<Route> initRoutes = [
    MaterialPageRoute<dynamic>(
      builder: (BuildContext context) => const OnBoardingPage(),
    ),
    MaterialPageRoute<void>(
      builder: (BuildContext context) => const RegisterationPage(),
    ),
     MaterialPageRoute<void>(
      builder: (BuildContext context) => const Dashboard(),
    ),
  ];

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case 'create new account':
        return MaterialPageRoute<dynamic>(
          builder: (BuildContext context) => const CreateNewAccountPage(),
        );
      case 'register':
        return MaterialPageRoute<dynamic>(
          builder: (BuildContext context) => const RegisterationPage(),
        );
      default:
        return MaterialPageRoute<dynamic>(
          builder: (BuildContext context) => const OnBoardingPage(),
        );
    }
  }
}
