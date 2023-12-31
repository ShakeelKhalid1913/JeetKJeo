import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:jeet_ke_jeo/firebase_options.dart';
import 'package:jeet_ke_jeo/splash.dart';
import 'package:jeet_ke_jeo/src/config/constants/theme.dart';
import 'package:jeet_ke_jeo/src/screens/auth/login/index.dart';
import 'package:jeet_ke_jeo/src/screens/auth/signup/index.dart';
import 'package:jeet_ke_jeo/src/screens/home/index.dart';
import 'package:jeet_ke_jeo/src/screens/purchase/index.dart';
import 'package:jeet_ke_jeo/src/services/firebase/auth.dart';
import 'package:jeet_ke_jeo/src/utils/routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Jeet Ke Jeo',
      debugShowCheckedModeBanner: false,
      theme: Themes.theme(context),
      themeMode: ThemeMode.dark,
      darkTheme: Themes.theme(context),
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        Routes.loginScreen: (context) => const LoginScreen(),
        Routes.signupScreen: (context) => const SignupScreen(),
        Routes.homeScreen: (context) => const HomeScreen(),
        Routes.purchaseScreen: (context) => const PurchaseLottery()
      },
    );
  }
}
