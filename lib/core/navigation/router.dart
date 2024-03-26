import '../../features/features.dart';
import '../core.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const CountryListScreen(),
      routes: [
        GoRoute(
          path: 'detail',
          builder: (context, state) => CountryDetailScreen(
            country: state.extra as Country,
          ),
        ),
      ],
    ),
  ],
);
