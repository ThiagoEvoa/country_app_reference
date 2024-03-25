import '../../features/features.dart';
import '../core.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) =>
          const CountryListScreen(),
    ),
  ],
);
