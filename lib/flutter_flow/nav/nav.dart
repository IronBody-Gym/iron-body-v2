import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:page_transition/page_transition.dart';
import '../flutter_flow_theme.dart';


import '../../index.dart';
import '../../main.dart';
import '../lat_lng.dart';
import '../place.dart';
import 'serialization_util.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

class AppStateNotifier extends ChangeNotifier {

  bool showSplashImage = true;
  String? _redirectLocation;

  /// Determines whether the app will refresh and build again when a sign
  /// in or sign out happens. This is useful when the app is launched or
  /// on an unexpected logout. However, this must be turned off when we
  /// intend to sign in/out and then navigate or perform any actions after.
  /// Otherwise, this will trigger a refresh and interrupt the action(s).
  bool notifyOnAuthChange = true;

  bool get loading =>  showSplashImage;
  bool get loggedIn => false;
  bool get initiallyLoggedIn =>  false;
  bool get shouldRedirect => loggedIn && _redirectLocation != null;

  String getRedirectLocation() => _redirectLocation!;
  bool hasRedirect() => _redirectLocation != null;
  void setRedirectLocationIfUnset(String loc) => _redirectLocation ??= loc;
  void clearRedirectLocation() => _redirectLocation = null;

  /// Mark as not needing to notify on a sign in / out when we intend
  /// to perform subsequent actions (such as navigation) afterwards.
  void updateNotifyOnAuthChange(bool notify) => notifyOnAuthChange = notify;


  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      errorBuilder: (context, _) =>
          appStateNotifier.loggedIn ? Home1Widget() : Login2Widget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) =>
              appStateNotifier.loggedIn ? Home1Widget() : Login2Widget(),
        ),
        FFRoute(
          name: 'SingIn',
          path: '/singIn',
          builder: (context, params) => SingInWidget(
          ),
        ),
        FFRoute(
          name: 'SignUp',
          path: '/signUp',
          builder: (context, params) => SignUpWidget(),
        ),
        FFRoute(
          name: 'pageStep3',
          path: '/pageStep3',
          builder: (context, params) => PageStep3Widget(),
        ),
        FFRoute(
          name: 'pageStep2',
          path: '/pageStep2',
          builder: (context, params) => PageStep2Widget(),
        ),
        FFRoute(
          name: 'Perfil',
          path: '/perfil',
          builder: (context, params) => PerfilWidget(),
        ),
        FFRoute(
          name: 'workouts',
          path: '/workouts',
          builder: (context, params) => WorkoutsWidget(),
        ),
        FFRoute(
          name: 'Home1',
          path: '/home1',
          builder: (context, params) => Home1Widget(),
        ),
        FFRoute(
          name: 'gymEvents',
          path: '/gymEvents',
          builder: (context, params) => GymEventsWidget(),
        ),
        FFRoute(
          name: 'Navbar',
          path: '/navbar',
          builder: (context, params) => NavbarWidget(),
        ),
        FFRoute(
          name: 'DailyWorkout',
          path: '/dailyWorkout',
          builder: (context, params) => DailyWorkoutWidget(),
        ),
        FFRoute(
          name: 'WorkoutCategories',
          path: '/workoutCategories',
          builder: (context, params) => WorkoutCategoriesWidget(),
        ),
        FFRoute(
          name: 'Instructors',
          path: '/instructors',
          builder: (context, params) => InstructorsWidget(),
        ),
        FFRoute(
          name: 'WorkoutDescription',
          path: '/workoutDescription',
          builder: (context, params) => WorkoutDescriptionWidget(),
        ),
        FFRoute(
          name: 'MachineDescription',
          path: '/machineDescription',
          builder: (context, params) => MachineDescriptionWidget(),
        ),
        FFRoute(
          name: 'TrainerDetail',
          path: '/trainerDetail',
          builder: (context, params) => TrainerDetailWidget(),
        ),
        FFRoute(
          name: 'WriteReview',
          path: '/writeReview',
          builder: (context, params) => WriteReviewWidget(),
        ),
        FFRoute(
          name: 'Event',
          path: '/event',
          builder: (context, params) => EventWidget(),
        ),
        FFRoute(
          name: 'createtrainer',
          path: '/createtrainer',
          builder: (context, params) => CreatetrainerWidget(),
        ),
        FFRoute(
          name: 'CustomerList',
          path: '/customerList',
          builder: (context, params) => CustomerListWidget(),
        ),
        FFRoute(
          name: 'RecoveryPass',
          path: '/recoveryPass',
          builder: (context, params) => RecoveryPassWidget(),
        ),
        FFRoute(
          name: 'CreateWorkout',
          path: '/createWorkout',
          builder: (context, params) => CreateWorkoutWidget(),
        ),
        FFRoute(
          name: 'CreateWorkoutNext',
          path: '/createWorkoutNext',
          builder: (context, params) => CreateWorkoutNextWidget(),
        ),
        FFRoute(
          name: 'CreateWorkoutFinal',
          path: '/createWorkoutFinal',
          builder: (context, params) => CreateWorkoutFinalWidget(),
        ),
        FFRoute(
          name: 'CreateGuide',
          path: '/createGuide',
          builder: (context, params) => CreateGuideWidget(),
        ),
        FFRoute(
          name: 'Login2',
          path: '/login2',
          builder: (context, params) => Login2Widget(),
        ),
        FFRoute(
          name: 'StoryWorkout',
          path: '/storyWorkout',
          builder: (context, params) => StoryWorkoutWidget(),
        ),
        FFRoute(
          name: 'HomeTrainer',
          path: '/homeTrainer',
          builder: (context, params) => HomeTrainerWidget(),
        ),
        FFRoute(
          name: 'ListadeEjercicios',
          path: '/listadeEjercicios',
          builder: (context, params) => ListadeEjerciciosWidget(),
        ),
        FFRoute(
          name: 'splash',
          path: '/splash',
          builder: (context, params) => SplashWidget(),
        )
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
      urlPathStrategy: UrlPathStrategy.path,
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void goNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> params = const <String, String>{},
    Map<String, String> queryParams = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : goNamed(
              name,
              params: params,
              queryParams: queryParams,
              extra: extra,
            );

  void pushNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> params = const <String, String>{},
    Map<String, String> queryParams = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : pushNamed(
              name,
              params: params,
              queryParams: queryParams,
              extra: extra,
            );

  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (GoRouter.of(this).routerDelegate.matches.length <= 1) {
      go('/');
    } else {
      pop();
    }
  }
}

extension GoRouterExtensions on GoRouter {
  AppStateNotifier get appState =>
      (routerDelegate.refreshListenable as AppStateNotifier);
  void prepareAuthEvent([bool ignoreRedirect = false]) =>
      appState.hasRedirect() && !ignoreRedirect
          ? null
          : appState.updateNotifyOnAuthChange(false);
  bool shouldRedirect(bool ignoreRedirect) =>
      !ignoreRedirect && appState.hasRedirect();
  void clearRedirectLocation() => appState.clearRedirectLocation();
  void setRedirectLocationIfUnset(String location) =>
      (routerDelegate.refreshListenable as AppStateNotifier)
          .updateNotifyOnAuthChange(false);
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(params)
    ..addAll(queryParams)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.extraMap.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, [
    bool isList = false,
    List<String>? collectionNamePath,
  ]) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        redirect: (state) {
          if (appStateNotifier.shouldRedirect) {
            final redirectLocation = appStateNotifier.getRedirectLocation();
            appStateNotifier.clearRedirectLocation();
            return redirectLocation;
          }

          if (requireAuth && !appStateNotifier.loggedIn) {
            appStateNotifier.setRedirectLocationIfUnset(state.location);
            return '/login2';
          }
          return null;
        },
        pageBuilder: (context, state) {
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = appStateNotifier.loading
              ? new SplashWidget()
              : page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder: PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).transitionsBuilder,
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => TransitionInfo(hasTransition: false);
}
