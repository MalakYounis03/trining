import 'package:trining/features/home/presentation/views/branches_view.dart';
import 'package:trining/features/home/presentation/views/home_view.dart';
import 'package:trining/features/room/views/room_service_request_view.dart';
import 'package:trining/features/login/presentation/views/login_view.dart';
import 'package:trining/features/splash/presentation/views/splash_view.dart';

abstract class AppRoutes {
  static const splash = Routes.splashView;
  static const homeView = Routes.homeView;
  static const branchesView = Routes.branchesView;
  static const loginView = Routes.loginView;
  static const roomView = Routes.roomView;

  static final routes = {
    Routes.splashView: (context) => const SplashView(),
    Routes.homeView: (context) => const HomeView(),
    Routes.branchesView: (context) => const BranchesView(),
    Routes.loginView: (context) => const LoginView(),
    Routes.roomView: (context) => const RoomServiceRequestView(),
  };
}

abstract class Routes {
  static const splashView = '/splash_view';
  static const homeView = '/home_view';
  static const branchesView = '/branches_view';
  static const loginView = '/login_view';
  static const roomView = '/room_view';
}
