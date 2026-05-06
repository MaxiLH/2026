import 'package:dap_tp_5ma_maximiliano_huang/screen/login.dart';
import 'package:dap_tp_5ma_maximiliano_huang/screen/home.dart';
import 'package:go_router/go_router.dart';

final appRouter = GoRouter(routes: [
  GoRoute(
    name: ScreenLogin.name,
    path: '/',
    builder: (context, state) => const ScreenLogin(),
  ),
  GoRoute(
    name: homeScreen.name,
    path: '/home',
    builder: (context, state) => const homeScreen(),
  ),
]);