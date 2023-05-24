// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:search_movies/src/features/onboarding_screen/presentation/onboarding_screen.dart'
    as _i1;
import 'package:search_movies/src/features/search_screen/presentation/search_screen.dart'
    as _i2;

abstract class $AppRouter extends _i3.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    OnboardingRoute.name: (routeData) {
      return _i3.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.OnboardingScreen(),
      );
    },
    SearchRoute.name: (routeData) {
      return _i3.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.SearchScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.OnboardingScreen]
class OnboardingRoute extends _i3.PageRouteInfo<void> {
  const OnboardingRoute({List<_i3.PageRouteInfo>? children})
      : super(
          OnboardingRoute.name,
          initialChildren: children,
        );

  static const String name = 'OnboardingRoute';

  static const _i3.PageInfo<void> page = _i3.PageInfo<void>(name);
}

/// generated route for
/// [_i2.SearchScreen]
class SearchRoute extends _i3.PageRouteInfo<void> {
  const SearchRoute({List<_i3.PageRouteInfo>? children})
      : super(
          SearchRoute.name,
          initialChildren: children,
        );

  static const String name = 'SearchRoute';

  static const _i3.PageInfo<void> page = _i3.PageInfo<void>(name);
}
