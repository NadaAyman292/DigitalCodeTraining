import 'package:digital_code_training/screens/login/login_screen.dart';
import 'package:digital_code_training/screens/register/register_screen.dart';
import 'package:go_router/go_router.dart';

import '../screens/home/home_screen.dart';

abstract class AppRouter {
  static const klogin = '/';
  static const kRegister = '/kRegister';
  static const kHome = '/kHome';

  static final router = GoRouter(routes: [
    GoRoute(
      path: klogin,
      builder: (context, state) => const LoginScreen(),
    ),
    GoRoute(
      path: kRegister,
      builder: (context, state) => const RegisterScreen(),
    ),
    GoRoute(path: kHome, builder: (context, state) => const HomeScreen())
  ]);
}
