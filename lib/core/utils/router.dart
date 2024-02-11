import 'package:bookly/features/home/presentation/views/book_details_views.dart';
import 'package:bookly/features/home/presentation/views/home_view.dart';
import 'package:bookly/features/search/views/search_view.dart';
import 'package:bookly/features/splash_view/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class Rout {
  static const khomepage = '/homepage';
  static const kdetailsview = '/detailsview';
  static const ksearchview = '/searchview';
  static final router = GoRouter(routes: [
    GoRoute(path: '/', builder: (context, state) => const SplashView()),
    GoRoute(path: khomepage, builder: (context, state) => const HomeView()),
    GoRoute(
        path: kdetailsview,
        builder: (context, state) => const BookDetailsView()),
    GoRoute(path: ksearchview, builder: (context, state) => const SearchView())
  ]);
}
