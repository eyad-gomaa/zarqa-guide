
import 'package:go_router/go_router.dart';
import 'package:khadamat/features/category/data/models/doctors.dart';
import 'package:khadamat/features/home/presentation/view/home_view.dart';
import '../../features/category/presentation/view/details_view.dart';
import '../../features/category/presentation/view/doctors_view.dart';
import '../../features/category/presentation/view/restaurants_view.dart';
import '../../features/category/presentation/view/shops.dart';
import '../../features/category/presentation/view/support_view.dart';
import '../../features/search/persentation/view/search_view.dart';
import '../../features/splash/presentation/views/splash_view.dart';

abstract class AppRouter {
  static final router = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashView(),
    ),
    GoRoute(
      path: '/HomeView',
      builder: (context, state) => const HomeView(),
    ),
    GoRoute(
      path: "/DoctorsView",
      builder: (context, state) => const DoctorsView(),
    ),
    GoRoute(
      path: "/RestaurantsView",
      builder: (context, state) => const RestaurantsView(),
    ),
    GoRoute(
      path: "/ShopsView",
      builder: (context, state) => const ShopsView(),
    ),
    GoRoute(
      path: "/SupportView",
      builder: (context, state) => const SupportView(),
    ),GoRoute(
      path: "/SearchView",
      builder: (context, state) =>  SearchView(collection: state.extra as String),
    ),
    GoRoute(
      path: "/DetailsView",
      builder: (context, state) =>
          DetailsView(doctorModel: state.extra as DataModel),
    ),
  ]);
}
